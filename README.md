# Line Art Colorization Electron App

This repository contains the code for the Electron App that packages the Line Art Colorization Model which code you can find [here](https://github.com/vincent1bt/line-art-colorization) and a blog post about the model [here](https://vincentblog.xyz/posts/line-art-colorization-using-a-deep-learning-model).

You can also find a blog post about the process to build this app [here](https://github.com/vincent1bt/Line-art-colorization-electron-app).

This app uses TensorFlow.js to load and run the model.

You can build the app using:

```
npm run dist
```

You need to change the **build** section in the **package.json** and add your operating system or leave **mac** if you're running **macOS**.

The results from this app are not as good as the python version. This could be due to the differences in the Javascript version of TensorFlow.

![Example 1](
https://github.com/vincent1bt/Line-art-colorization-electron-app/blob/main/app_example_images/example1/example1.png)
![Example 2](
https://github.com/vincent1bt/Line-art-colorization-electron-app/blob/main/app_example_images/example1/example2.png)