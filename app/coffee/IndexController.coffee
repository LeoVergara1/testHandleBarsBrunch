class IndexController
  Handlebars = require('coffee/HandelBarsController.coffee')
  App = require('coffee/MainApp.coffee')
  template = "#entry-template"
  source   = "#insert"
  context = {title: "Tarjeta Nueva", body: "This is my first post!", number: 0}
  App.getInstance()

  constructor: ->


  insert: ->
    $("#insert1").on("click", ->
      context.number++
      console.log context.number
      Handlebars.getInstance().compileAppend(template,source, context)
      console.log "Presiona"
    )
    $("#insert2").on("click", ->
      context.number++
      console.log context.number
      Handlebars.getInstance().compilePrepend(template,source, context)
      console.log "Presiona"
    )
    $("#insert").on("click",".delete",(event) ->
      console.log $(event.currentTarget).parents("div.entry").remove()
      console.log "Borrar"
    )



  start: ->
    @insert()


new IndexController().start()
