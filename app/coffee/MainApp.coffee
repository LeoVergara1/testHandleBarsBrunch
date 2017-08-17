class App
  instance = null

  RouteRecognizer = require('route-recognizer')

  class AppHandler
    constructor: () ->

      router = new RouteRecognizer()

      router.map (match)->
        match("/posts").to "postIndex"
        match("/posts/new").to "newPost"

      myHandlers = {}
      myHandlers.showPost =
        setup: () ->
          console.log "Hola mundo"
      myHandlers.newPost =
        setup: () ->
          console.log "otra vez hola"

      router.getHandlers = (name) ->
        myHandlers[name]

  @getInstance: () ->
    instance ?= new AppHandler()

module.exports = App
