class HandelBarsController
  instance = null
  Handlebars = require('handlebars')

  class HandelBarsHandler
    constructor: () ->

    compileAppend:(template,idDestination, context) ->
      console.log $(template)
      source = $(template).html()
      template = Handlebars.compile(source)
      html    = template(context)
      $(idDestination).append(html)


  @getInstance: () ->
      instance ?= new HandelBarsHandler()



module.exports  = HandelBarsController
