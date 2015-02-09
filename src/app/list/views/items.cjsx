define ["react"], (React)->

  class Items extends React.Component

    Item = require("app/list/views/item")

    constructor: (props)->
      @itemComponents = props.items.map (value)=>
        <Item onClickItem={this.onClickItem} key={value} value={value} />
      super

    render: ->
      <ul>{this.itemComponents}</ul>

    onClickItem: (value)=>
      @props.onClickItem(value)

