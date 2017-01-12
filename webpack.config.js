const webpack = require('webpack');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const LessPluginCleanCSS = require('less-plugin-clean-css');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

const config = {
  entry: {
    app: './src/app.js'
  },
  output: {
    filename: 'bundle.js',
    path: './dist'
  },
  module: {
    loaders: [
      {
        test: /\.less$/,
        loader: ExtractTextPlugin.extract('style-loader', 'css-loader!postcss-loader!less-loader')
      },
    ]
  },
  lessLoader: {
    lessPlugins: [
      new LessPluginCleanCSS({advanced: true})
    ]
  },
  plugins: [
    new ExtractTextPlugin('styles.css')
  ],
  postcss: () => {
    return [
      require('autoprefixer')
    ];
  }
};

module.exports = config;
