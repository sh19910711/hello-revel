define ["react"], (React)->

  class @Controller

    List = require("app/list/view")

    "showIndex": ->
      React.render(<List />, document.getElementById "main-container")

