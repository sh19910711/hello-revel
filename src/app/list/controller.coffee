define ["marionette", "react"], (Marionette, React)->

  class Controller extends Marionette.Controller

    List = require("app/list/view")

    showIndex: ->
      @container ||= document.getElementById("main-container")
      React.render(React.createElement(List, null), @container)

