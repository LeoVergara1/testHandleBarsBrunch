class App
  instance = null
  Handlebars = require('coffee/HandelBarsController.coffee')
  template = "#entry-template"
  source   = "#insert"
  context = {title: "Tarjeta Nueva", body: "This is my first post!", number: 0}

  class AppHandler
    constructor: () ->

      author = ->
        console.log 'author'
        $("#insert").html("<h1>Hola mundo</h1>")

      books = ->
        console.log 'books'
        Handlebars.getInstance().compileAppend(template,source, context)

      viewBook = (bookId) ->
        console.log 'viewBook: bookId is populated: ' + bookId
        $("#insert").html("<h1>Libro #{bookId}</h1>")

      routes =
        '/author': author
        '/books': [ books, (() -> console.log 'An inline route handler.') ]
        '/books/view/:bookId': viewBook
      router = Router(routes)
      router.init()

  @getInstance: () ->
    instance ?= new AppHandler()

module.exports = App
