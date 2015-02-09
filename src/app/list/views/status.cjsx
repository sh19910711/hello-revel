define ["react"], (React)->

  class Status extends React.Component

    constructor: (props)->
      super

    render: ->
      <div>Status: {this.props.message}</div>

