#### Web Pack
Webpack is an open-source JavaScript module bundler. Webpack takes modules with dependencies and generates static assets representing those modules.It takes the dependencies and generates a dependency graph allowing you to use a modular approach for your web application development purposes. The bundler can be used from the command line, or can be configured using a config file which is named webpack.config.js.

You will need node.js for installing webpack. Another important aspect about webpack is that it is highly extensible by the use of loaders. Loaders allow you to write custom tasks that you want to perform when bundling files together.

Existing module bundlers are not well suited for big projects (big single page applications). The most pressing reason for developing another module bundler was Code Splitting and that static assets should fit seamlessly together through modularization.

For big web apps it's not efficient to put all code into a single file, especially if some blocks of code are only required under some circumstances. Webpack has a feature to split your codebase into "chunks" which are loaded on demand. Some other bundlers call them "layers", "rollups", or "fragments". This feature is called "code splitting".

It's an opt-in feature. You can define split points in your code base. Webpack takes care of the dependencies, output files and runtime stuff.

To clarify a common misunderstanding: Code Splitting is not just about extracting common code into a shared chunk. The more notable feature is that Code Splitting can be used to split code into an on demand loaded chunk. This can keep the initial download small and downloads code on demand when requested by the application.

#### How is webpack different?

#### Code Splitting

webpack has two types of dependencies in its dependency tree: sync and async. Async dependencies act as split points and form a new chunk. After the chunk tree is optimized, a file is emitted for each chunk.

Read more about Code Splitting.

#### Loaders

webpack can only process JavaScript natively, but loaders are used to transform other resources into JavaScript. By doing so, every resource forms a module.

Read more about Using loaders and Loaders.

#### Clever parsing

webpack has a clever parser that can process nearly every 3rd party library. It even allows expressions in dependencies such as: require("./templates/" + name + ".jade"). It handles the most common module styles: CommonJs and AMD.

Read more about expressions in dependencies, CommonJs and AMD.

#### Plugin system

webpack features a rich plugin system. Most internal features are based on this plugin system. This allows you to customize webpack for your needs and distribute common plugins as open source.

```
npm install webpack

```

-g if you want to install webpack globally
```
npm init # (questions to answer)
```

```
npm install --save-dev webpack
```
#### project structure:
```
/bin   <--contains binary file i.e bundled files
/src   <--contains source file
webpack.config.js
```
#### create `webpack.config.js`:
```
module.exports = {
     entry: './src/app.js',
     output: {
         path: './bin',
         filename: 'app.bundle.js'
     }
 };
 ```
