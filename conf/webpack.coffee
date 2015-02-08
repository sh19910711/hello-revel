webpack = require("webpack")
path = require("path")

webpackPlugins = []

webpackPlugins.push new webpack.ResolverPlugin [
  new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin "bower.json", ["main"]
]

unless process.env["DEBUG"] == "yes"
  console.log "webpack: enable uglifyjs"
  webpackPlugins.push new webpack.optimize.UglifyJsPlugin
    compress:
      warnings: false

module.exports =
  entry:
    main: ["app/main"]

  resolve:
    root: [
      path.join __dirname, "..", "./bower_components"
      path.join __dirname, "..", "./node_modules/react"
      path.join __dirname, "..", "./src"
    ]

    extensions: [
      ""
      ".coffee"
      ".cjsx"
      ".js"
      ".jsx"
    ]

  externals:
    "jquery": "jQuery"

  output:
    filename: "[name].js"

  module:
    loaders: [
      { test: /\.cjsx$/, loaders: ["transform?coffee-reactify"] }
      { test: /\.coffee$/, loaders: ["coffee"] }
      { test: /\.jsx$/, loaders: ["jsx"] }
    ]

  plugins: webpackPlugins

