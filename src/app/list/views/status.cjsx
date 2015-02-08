define ["react"], (React)->

  class ListStatus extends React.Component

    constructor: (props)->
      super

    render: ->
      <div>Status: {this.props.message}</div>

