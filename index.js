const console = require('console');
const { app, dialog, ipcMain, BrowserWindow } = require('electron');
const fs = require("fs");
const path = require("path");

let mainWindow;
let workerWindow;

function createWindow() {
  mainWindow = new BrowserWindow({
    height: 800,
    width: 1200,
    webPreferences: {
      nodeIntegration: true
    }
  });

  mainWindow.loadFile('src/views/index.html');

  mainWindow.on('closed', () => {
    mainWindow = null;
  });
}

function createWorker() {
  // hidden worker
  workerWindow = new BrowserWindow({
    show: false,
    // height: 800,
    // width: 1200,
    webPreferences: { 
      nodeIntegration: true,
      enableRemoteModule: true
  }
  });

  workerWindow.loadFile('src/views/worker.html');

  workerWindow.on('closed', () => {
    workerWindow = null;
  });

  // workerWindow.webContents.openDevTools();

  console.log("worker created");
}

app.on('ready', () => {
  createWindow();
  createWorker();
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('activate', () => {
  if (mainWindow === null) {
    createWindow();
  }

  if (workerWindow == null) {
    createWorker();
  }
});

// const colorModel = new ColorModel();

ipcMain.on('get-directories', (event, arg) => {
    dialog.showOpenDialog({
      properties: ['openDirectory']
    }).then( async (data) => {

      if (data.filePaths == null || Array.isArray(data.filePaths) && data.filePaths.length === 0) {
          // console.log("op1");
          return;
      }

      const imagesPath = data.filePaths[0];

      const imagesNames = fs.readdirSync(imagesPath);

      let imagesPaths = [];

      imagesNames.forEach(imageName => {
        const fullPath = path.join(imagesPath, imageName);
        
        if (fs.lstatSync(fullPath).isFile()) {
          if (imageName[0] != ".") {
            imagesPaths.push(fullPath);
          }
        }
      });

      const name = arg.name;

      if (imagesPaths.length == 3 && name == "color") {
        // You only need 2 color images
        return;
      }
      
      if (imagesPaths.length != 3) {
        if (name == "color" && imagesPaths.length != 2) {
          return;
        }
      }

      let mainPath = imagesPath.split("/").slice(0, -1).join("/");

      workerWindow.webContents.send('send-model-paths', {mainPath, imagesPaths, name});

      const pathsDone = true;

      event.sender.send('send-paths', {pathsDone, imagesPaths, name});

    }).catch(err => {
      console.log(err);
    })
});

ipcMain.on('run-model', async (event, arg) => {
  const indexRadio = arg.indexRadio;

  workerWindow.webContents.send('run-model', {indexRadio});
});

ipcMain.on('first-model-done', (event, arg) => {
  const firstFinalImagePath = arg.firstFinalImagePath;
  mainWindow.webContents.send('first-model-done', {firstFinalImagePath});
});

ipcMain.on('second-model-done', (event, arg) => {
  const secondFinalImagePath = arg.secondFinalImagePath;
  mainWindow.webContents.send('second-model-done', {secondFinalImagePath});
});

ipcMain.on('final-model-done', (event, arg) => {
  const finalImagePath = arg.finalImagePath;
  mainWindow.webContents.send('final-model-done', {finalImagePath});
});