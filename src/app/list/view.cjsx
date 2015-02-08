define ["react"], (React)->

  class List extends React.Component

    ListTitle = require("app/list/views/title")
    ListItems = require("app/list/views/items")
    ListStatus = require("app/list/views/status")

    constructor: ->
      @state =
        statusMessage: "No message."
      @items = ["item-1", "item-2", "item-3"]
      super

    render: ->
      <div className="list">
        <ListTitle />
        <ListStatus message={this.state.statusMessage} />
        <ListItems onClickItem={this.onClickItem} items={this.items} />
      </div>

    onClickItem: (value)=>
      @setState
        statusMessage: "Item #{value} is clicked"

