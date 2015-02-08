Backbone = require("backbone")
Controller = require("app/list/controller")
Router = require("app/list/router")

new Router
  controller: new Controller

global.window.onload = ->
  Backbone.history.start({pushState: true})

