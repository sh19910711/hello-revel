define ["react"], (React)->

  class List extends React.Component

    Title = require("app/list/views/title")
    Items = require("app/list/views/items")
    Status = require("app/list/views/status")

    constructor: ->
      @state =
        statusMessage: "No message."
      @items = ["item-1", "item-2", "item-3"]
      super

    render: ->
      <div className="list">
        <Title />
        <Status message={this.state.statusMessage} />
        <Items onClickItem={this.onClickItem} items={this.items} />
      </div>

    onClickItem: (value)=>
      @setState
        statusMessage: "Item #{value} is clicked"

