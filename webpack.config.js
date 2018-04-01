const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');
const ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {
  entry: {
    app: ['./app/js/viewport.js','./app/main.js']
  },
  module: {
    rules: [{
      test: /\.html$/,
      loader: 'html-loader',
      options: {
        attrs: ['img:src']
      }
    },
    {
      test: /\.vue$/,
      loader: 'vue-loader',
      options: {
        loaders: {
          css: ExtractTextPlugin.extract({
              use: 'css-loader!px2rem-loader?remUnit=75&remPrecision=8',
              fallback: 'vue-style-loader' // <- 这是vue-loader的依赖，所以如果使用npm3，则不需要显式安装
            }),
          scss: ExtractTextPlugin.extract({
              use: 'css-loader!px2rem-loader?remUnit=75&remPrecision=8!sass-loader',
              fallback: 'vue-style-loader' // <- 这是vue-loader的依赖，所以如果使用npm3，则不需要显式安装
            })
          // css: 'vue-style-loader!css-loader!px2rem-loader?remUnit=75&remPrecision=8', // <style lang="scss">
          // scss: 'vue-style-loader!css-loader!px2rem-loader?remUnit=75&remPrecision=8!sass-loader' // <style lang="sass">
        },
        cssModules: {
          localIdentName: '[path][name]---[local]---[hash:base64:5]',
          camelCase: true
        }
      }
    },
    {
      test: /\.scss$/,
      loader: 'style-loader!css-loader!sass-loader'
    },
    {
      test: /\.(png|jpg|jpeg|gif)$/,
      loader: 'url-loader',
      options: {
        limit: 10000,
        name: '[name].[ext]',
        outputPath: 'image/'
      }
    }]
  },
  // module: {
  //   loaders: [{
  //     test: /\.html$/,
  //     loader: 'html-loader'
  //   },
  //   {
  //     test: /\.vue$/,
  //     loader: 'vue-loader',
  //     options: {
  //       loaders: {
  //         css: ExtractTextPlugin.extract({
  //             use: 'css-loader!px2rem-loader?remUnit=75&remPrecision=8',
  //             fallback: 'vue-style-loader' // <- 这是vue-loader的依赖，所以如果使用npm3，则不需要显式安装
  //           }),
  //         scss: ExtractTextPlugin.extract({
  //             use: 'css-loader!px2rem-loader?remUnit=75&remPrecision=8!sass-loader',
  //             fallback: 'vue-style-loader' // <- 这是vue-loader的依赖，所以如果使用npm3，则不需要显式安装
  //           })
  //         // css: 'vue-style-loader!css-loader!px2rem-loader?remUnit=75&remPrecision=8', // <style lang="scss">
  //         // scss: 'vue-style-loader!css-loader!px2rem-loader?remUnit=75&remPrecision=8!sass-loader' // <style lang="sass">
  //       }
  //     }
  //   },
  //   {
  //     test: /\.scss$/,
  //     loader: 'style-loader!css-loader!sass-loader'
  //   }]
  // },
  plugins: [
    new CleanWebpackPlugin(['dist']),
    new HtmlWebpackPlugin({
      template:'./app/index.html'
    }),
    new ExtractTextPlugin("style.css")
  ],
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname,'dist'),
    publicPath: './'
  },
  devServer: {
    contentBase: path.join(__dirname, "dist"),
    compress: true,
    port: 9000
  },
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js' // 用 webpack 1 时需用 'vue/dist/vue.common.js'
    }
  }
}