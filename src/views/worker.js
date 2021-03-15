const { ipcRenderer } = require('electron');
const ColorModel = require('./model.js');

const { app } = require('electron').remote; // use main modules from the renderer process

// const appPath = app.getAppPath();
const appPath = process.resourcesPath;

console.log(appPath);
// console.log(process.resourcesPath);



const colorModel = new ColorModel(appPath);

(async () => {
    await colorModel.loadModel();
})();

ipcRenderer.on('send-model-paths', (event, arg) => {
    console.log("from worker 1");

    const imagesPaths = arg.imagesPaths;
    const mainPath = arg.mainPath;
    const name = arg.name;

    colorModel.savePaths(imagesPaths, name);
    colorModel.main_path = mainPath;
});

ipcRenderer.on('run-model', async (event, arg) => {
    const indexRadio = arg.indexRadio;

    let [style_vector, res_input, firstFinalImagePath] = await colorModel.predictFirstPart(indexRadio);

    event.sender.send('first-model-done', {firstFinalImagePath});

    let [x, secondFinalImagePath] = await colorModel.predictSecondPart(style_vector, res_input);

    event.sender.send('second-model-done', {secondFinalImagePath});

    let finalImagePath = await colorModel.predictFinalPart(x);

    event.sender.send('final-model-done', {finalImagePath});
});