class IndexController
  Handlebars = require('handlebars')
  source   = $("#entry-template").html()
  template = Handlebars.compile(source)
  context = {title: "Tarjeta Nueva", body: "This is my first post!"}
  html    = template(context)

  constructor: ->


  insert: ->
    console.log "Funcion Button"
    console.log $("#insert1")
    $("#insert1").on("click", ->
      console.log "Presiona"
      $("#insert").append(html)
    )



  start: ->
    @insert()
    console.log "Hola"
    console.log html


new IndexController().start()
