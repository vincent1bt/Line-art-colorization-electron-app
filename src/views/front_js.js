const { ipcRenderer } = require('electron');

const lineArtFolderButton = document.getElementById('line-art-folder');
const distanceFolderButton = document.getElementById('distance-folder');
const colorFolderButton = document.getElementById('color-folder');

lineArtFolderButton.addEventListener('click', async () => {
    const name = "lineArt";
    ipcRenderer.send('get-directories', {name});
});

distanceFolderButton.addEventListener('click', async () => {
    const name = "distance";
    ipcRenderer.send('get-directories', {name});
});

colorFolderButton.addEventListener('click', async () => {
    const name = "color";
    ipcRenderer.send('get-directories', {name});
});

const lineFirst = document.getElementById('line-art-1');
const lineSecond = document.getElementById('line-art-2');
const lineThird = document.getElementById('line-art-3');

const distanceFirst = document.getElementById('distance-1');
const distanceSecond = document.getElementById('distance-2');
const distanceThird = document.getElementById('distance-3');

const colorFirst = document.getElementById('color-1');
const colorSecond = document.getElementById('color-3');

const runModelButton = document.getElementById('run-model')
runModelButton.disabled = true;

const imgsElements = {"lineArt": [lineFirst, lineSecond, lineThird],
                      "distance": [distanceFirst, distanceSecond, distanceThird],
                      "color": [colorFirst, colorSecond]}

function renderImgs(imagesPaths, imgsElement) {
    for (const [index, imgE] of imgsElement.entries()) {
        imgE.src = imagesPaths[index];
    }
}

ipcRenderer.on('send-paths', async (event, arg) => {
    const imagesPaths = arg.imagesPaths;
    const pathsDone = arg.pathsDone;
    renderImgs(imagesPaths, imgsElements[arg.name]);

    if (pathsDone) {
        runModelButton.disabled = false;
    }
});

// ipcRenderer.on('send-error', async (event, arg) => {
//     // show/animate error message
// });

const radio1 = document.getElementById('in-1');
const radio2 = document.getElementById('in-2');

const finalImage = document.getElementById('final_image');

const firstP = document.getElementById('first_p');
const secondP = document.getElementById('second_p');
const finalP = document.getElementById('final_p');

const firstImg = document.getElementById('first_img');
const secondImg = document.getElementById('second_img');
const finalImg = document.getElementById('final_img');

function checkRadioOption() {
    if (radio2.checked) {
        return 1;
    } else if (radio1.checked) {
        return 0;
    } else {
        return 2;
    }
}

runModelButton.addEventListener('click', async () => {
    // dont disable button but check if i can run the model
    // or there is an error
    firstP.classList.add("content-model-yet");
    firstImg.src = "assets/loading.gif";

    const indexRadio = checkRadioOption();

    finalImage.src = "assets/preview2.jpg";

    secondImg.src = "";
    finalImg.src = "";

    // finalImage.src = "";

    ipcRenderer.send('run-model', {indexRadio});
    runModelButton.disabled = true;
});

ipcRenderer.on('first-model-done', async (event, arg) => {
    const finalImagePath = arg.firstFinalImagePath;

    firstImg.src = "assets/done.png";
    firstP.classList.remove("content-model-yet");

    secondP.classList.add("content-model-yet");
    secondImg.src = "assets/loading.gif";

    finalImage.src = finalImagePath;
});

ipcRenderer.on('second-model-done', async (event, arg) => {
    const finalImagePath = arg.secondFinalImagePath;

    secondImg.src = "assets/done.png";
    secondP.classList.remove("content-model-yet");

    finalP.classList.add("content-model-yet");
    finalImg.src = "assets/loading.gif";

    finalImage.src = finalImagePath;
});

ipcRenderer.on('final-model-done', async (event, arg) => {
    const finalImagePath = arg.finalImagePath;

    finalImg.src = "assets/done.png";
    finalP.classList.remove("content-model-yet");

    finalImage.src = finalImagePath;

    runModelButton.disabled = false;
});