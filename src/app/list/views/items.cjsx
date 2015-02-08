define ["react"], (React)->

  class ListItems extends React.Component

    ListItem = require("app/list/views/item")

    constructor: (props)->
      @itemComponents = props.items.map (value)=>
        <ListItem onClickItem={this.onClickItem} key={value} value={value} />
      super

    render: ->
      <ul>{this.itemComponents}</ul>

    onClickItem: (value)=>
      @props.onClickItem(value)

