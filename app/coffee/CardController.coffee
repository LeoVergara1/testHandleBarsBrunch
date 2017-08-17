class CardController
  Handlebars = require('coffee/HandelBarsController.coffee')
  template = "#entry-template"
  source   = "#insert"
  context = {title: "Tarjeta Nueva", body: "This is my first post!", number: 0}

  show: ->
    Handlebars.getInstance().compileAppend(template,source, context)
    console.log "CardControlller"

  delete: ->
    console.log "BorrarCard"

module.exports  = CardController




