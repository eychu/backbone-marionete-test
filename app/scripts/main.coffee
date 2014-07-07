window.Moar =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'

$ ->
  'use strict'
  Moar.init()
  userRoute = new Moar.Routers.User
  Backbone.history.start()
