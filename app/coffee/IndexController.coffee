class IndexController
  Handlebars = require('handlebars')
  Handlebars1 = require('coffee/HandelBarsController.coffee')
  template = "#entry-template"
  source   = "#insert"
  context = {title: "Tarjeta Nueva", body: "This is my first post!"}

  constructor: ->


  insert: ->
    $("#insert1").on("click", ->
      Handlebars1.getInstance().compileAppend(template,source, context)
      console.log "Presiona"
    )



  start: ->
    @insert()
    console.log "Hola"


new IndexController().start()
