define ["react"], (React)->

  class Item extends React.Component

    render: ->
      <li onClick={this.onClick} key={this.props.key} value={this.props.value}>{this.props.value}</li>

    onClick: =>
      @props.onClickItem @props.value
      

