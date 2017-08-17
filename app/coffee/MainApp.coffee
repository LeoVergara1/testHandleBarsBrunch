class App
  instance = null
  CardController = require('coffee/CardController.coffee')
  cardController = new CardController()

  class AppHandler
    constructor: () ->

      author = ->
        console.log 'author'
        $("#insert").html("<h1>Hola mundo</h1>")
        cardController.show()

      books = ->
        console.log 'books'

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
