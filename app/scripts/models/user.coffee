#global Moar, Backbone

Moar.Models = Moar.Models or {}
(->
  'use strict'

  Moar.Models.User = Backbone.Model.extend(
    #todo переделать роуты
    urlRoot: 'http://inhouse.local1/api/frontend/users/'
    initialize: ->

    defaults: {}
    validate: (attrs, options) ->

    parse: (response, options) ->
      response
  )
  return
)()
