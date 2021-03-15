// import * as tf from '@tensorflow/tfjs-node';
const tf = require('@tensorflow/tfjs-node');

// import { createRequire } from 'module';
// const require = createRequire(import.meta.url);
let Jimp = require('jimp');
let resolvePath = require('path').resolve
let path = require("path");

const fs = require("fs");

async function getTensorImage(filePath, final_height, final_width) {
    return new Promise((resolve, reject) => {
        Jimp.read(filePath, (err, image) => {
            if (err) {
                reject(err);
            } else {
                const height = image.bitmap.height;
                const width = image.bitmap.width;
                const buffer = tf.buffer([1, height, width, 3], 'float32');

                image.scan(0, 0, width, height, function(x, y, index) {
                    buffer.set(image.bitmap.data[index], 0, y, x, 0);
                    buffer.set(image.bitmap.data[index + 1], 0, y, x, 1);
                    buffer.set(image.bitmap.data[index + 2], 0, y, x, 2);
                });

                resolve(tf.tidy(() => tf.image.resizeBilinear(
                    buffer.toTensor(), [final_height, final_width]).div(255)));
                }
        });
    });
}

class ColorModel {
    constructor(appPath) {
        this.first_part_model = null;
        this.second_part_model = null;
        this.third_part_model = null;

        this.color_paths = [];
        this.line_art_paths = [];
        this.distance_paths = [];

        this.models_loaded = false;

        this.main_path = [];
        this.images_ready = false;

        this.appPath = appPath;
    }

    async loadModel(callback) {
        if (this.models_loaded == false) {
            // Model files must be in a different file than the js, assets files
            this.first_part_model = await tf.node.loadSavedModel(path.join(this.appPath, 'model/saved_model/first_part_model'));
            this.second_part_model = await tf.node.loadSavedModel(path.join(this.appPath, 'model/saved_model/second_part_model'));
            this.third_part_model = await tf.node.loadSavedModel(path.join(this.appPath, 'model/saved_model/third_part_model'));
            this.models_loaded = true;
            console.log("Models Loaded");
        }
    }

    savePaths(imagePaths, pathType) {
        if (pathType == "color") {
            this.color_paths = imagePaths;
        } else if (pathType == "distance") {
            this.distance_paths = imagePaths;
        } else {
            this.line_art_paths = imagePaths;
        }

        if (this.color_paths != [] && this.line_art_paths != [] && this.distance_paths != []) {
            this.images_ready = true;
        }
    }

    async loadImages(indexRadio) {
        // To do: Choose which image will be colorized
        tf.tidy(() => {
            let color_frame_1 = await getTensorImage(this.color_paths[0], 256, 455);
            let color_frame_3 = await getTensorImage(this.color_paths[1], 256, 455);

            let line_frame_1 = await getTensorImage(this.line_art_paths[0], 256, 455);
            let line_frame_2 = await getTensorImage(this.line_art_paths[1], 256, 455);
            let line_frame_3 = await getTensorImage(this.line_art_paths[2], 256, 455);

            let distance_frame_1 = await getTensorImage(this.distance_paths[0], 256, 455);
            let distance_frame_2 = await getTensorImage(this.distance_paths[1], 256, 455);
            let distance_frame_3 = await getTensorImage(this.distance_paths[2], 256, 455);

            color_frame_1 = color_frame_1.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            // color_frame_2 = color_frame_2.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            color_frame_3 = color_frame_3.slice([0, 0, 100, 0], [1, 256, 256, 3]);

            line_frame_1 = line_frame_1.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            line_frame_2 = line_frame_2.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            line_frame_3 = line_frame_3.slice([0, 0, 100, 0], [1, 256, 256, 3]);

            distance_frame_1 = distance_frame_1.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            distance_frame_2 = distance_frame_2.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            distance_frame_3 = distance_frame_3.slice([0, 0, 100, 0], [1, 256, 256, 3]);
            
            // let input = [line_frame_2, distance_frame_2, color_frame_1, line_frame_1, distance_frame_1, color_frame_3, line_frame_3, distance_frame_3];
            let input = [line_frame_1, distance_frame_1, color_frame_1, line_frame_2, distance_frame_2, color_frame_3, line_frame_3, distance_frame_3];

            return input;
        });
    }

    async predictFirstPart(indexRadio) {
        const input = await this.loadImages(indexRadio);
        
        let [res_input, style_vector, Y_trans_sim] = await this.first_part_model.predict(input);

        let first_output = await tf.node.encodeJpeg(Y_trans_sim.squeeze(0).mul(255).clipByValue(0, 255).cast('int32'), "rgb");

        const finalImagePath = `${this.main_path}/${Date.now()}_first_output.jpg`;
        fs.writeFileSync(finalImagePath, first_output);

        return [style_vector, res_input, finalImagePath];
    }

    async predictSecondPart(style_vector, res_input) {
        let [x, Y_trans_mid] = await this.second_part_model.predict([res_input, style_vector]);

        let second_output = await tf.node.encodeJpeg(Y_trans_mid.squeeze(0).mul(255).clipByValue(0, 255).cast('int32'), "rgb");

        const finalImagePath = `${this.main_path}/${Date.now()}_second_output.jpg`

        fs.writeFileSync(finalImagePath, second_output);

        return [x, finalImagePath];
    }

    async predictFinalPart(x) {
        let y_trans = await this.third_part_model.predict(x);

        let final_output = await tf.node.encodeJpeg(y_trans.squeeze(0).mul(255).clipByValue(0, 255).cast('int32'), "rgb");

        const finalImagePath = `${this.main_path}/${Date.now()}_final_output.jpg`

        fs.writeFileSync(finalImagePath, final_output);

        return finalImagePath;
    }
}

module.exports = ColorModel;