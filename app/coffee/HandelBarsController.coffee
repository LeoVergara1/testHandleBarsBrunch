class HandelBarsController
  instance = null
  Handlebars = require('handlebars')

  class HandlebarsHandler
    constructor: () ->

    compile:(template,idDestination, context) ->
      source = $(template).html()
      template = Handlebars.compile(source)
      html    = template(context)


    name:(context) -> ## Soló para representar la forma en que se puede registrar una funcion a Handlebars
      Handlebars.registerHelper "Name", ->
        return context.body +" "+context.number

    compileAppend:(template,idDestination, context) ->
      html = @compile(template,idDestination, context)
      $(idDestination).append(html)
    compilePrepend:(template,idDestination, context) ->
      html = @compile(template,idDestination, context)
      $(idDestination).prepend(html)


  @getInstance: () ->
      instance ?= new HandlebarsHandler()



module.exports  = HandelBarsController
