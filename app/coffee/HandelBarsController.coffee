class HandelBarsController
  instance = null
  Handlebars = require('handlebars')

  class HandelBarsHandler
    constructor: () ->

    compile:(template,idDestination, context) ->
      source = $(template).html()
      template = Handlebars.compile(source)
      html    = template(context)


    compileAppend:(template,idDestination, context) ->
      html = @compile(template,idDestination, context)
      $(idDestination).append(html)
    compilePrepend:(template,idDestination, context) ->
      html = @compile(template,idDestination, context)
      $(idDestination).prepend(html)


  @getInstance: () ->
      instance ?= new HandelBarsHandler()



module.exports  = HandelBarsController
