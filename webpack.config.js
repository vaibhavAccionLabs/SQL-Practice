//webpack.config.js
//Ref: https://www.youtube.com/watch?v=9c3dBhvtt6o
//dev-pendency : webpack, webpack-cli, webpack-dev-server,babel-core, style-loader,
//css-loader
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
mode:'development', // production
entry : {
    main: path.resolve(__dirname, 'src/app.js'),
    },
output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    assetModuleFilename:'[name][ext]',
    clean: true,
    },
devtool: 'inline-source-map',
devServer: {
        contentBase: path.resolve(__dirname, 'dist'),
        port: 5001, //default 8080
        open: true,
        hot: true,
        watchContentBase: true
    },    
//loaders
module: {
    rules: [
        //css
        { test: /\.css$/, use: ['style-loader', 'css-loader'] },
        //images
        { test: /\.(svg|gif|jpg|png|ico|jpeg)$/, type: 'asset/resource' },
        //js
        {
            test: /\.js$/,
            exclude: /node_modules/,
            use: {
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env']
                }
            }
        }
    ]
},

//plugins
//<%= htmlWebpackPlugin.options.title %>
plugins: [
    new HtmlWebpackPlugin({
        title: 'Demo',
        filename: 'index.html',
        template: path.resolve(__dirname, 'src/temp.html')
   }),
]
};
