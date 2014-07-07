#global Moar, Backbone, JST

Moar.Views = Moar.Views or {}
(->
  'use strict'

  class Moar.Views.User extends Backbone.View
    template: JST['app/scripts/templates/user.ejs']
    tagName: 'div'
    id: ''
    className: ''
    events: {}
    initialize: ->
      @listenTo @model, 'change', @render
      return

    render: ->
      @$el.html @template(@model.toJSON())
      return

)()
