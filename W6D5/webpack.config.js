// webpack.config.js
var path = require('path');

module.exports = {
  entry: './app.jsx',
  output: {
    filename: './bundle.js'
  },
  module: {
    rules: [
      {
        test: [/\.jsx?$/, /\.js?$/],
         exclude: /node_modules/,
         loader: 'babel-loader',
         query: {
           presets: ['react', 'es2015']
         }
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};
