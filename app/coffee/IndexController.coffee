class IndexController
  Handlebars = require('handlebars')
  Handlebars1 = require('coffee/HandelBarsController.coffee')
  template = "#entry-template"
  source   = "#insert"
  context = {title: "Tarjeta Nueva", body: "This is my first post!", number: 0}

  constructor: ->


  insert: ->
    $("#insert1").on("click", ->
      context.number++
      console.log context.number
      Handlebars1.getInstance().compileAppend(template,source, context)
      console.log "Presiona"
    )
    $("#insert2").on("click", ->
      context.number++
      console.log context.number
      Handlebars1.getInstance().compilePrepend(template,source, context)
      console.log "Presiona"
    )
    $("#insert").on("click",".delete",(event) ->
      console.log $(event.currentTarget).parents("div.entry").remove()
      console.log "Borrar"
    )



  start: ->
    @insert()
    console.log "Hola"


new IndexController().start()
