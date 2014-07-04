#global Moar, Backbone, JST

Moar.Views = Moar.Views or {}
(->
  'use strict'

  Moar.Views.User = Backbone.View.extend(
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
  )
  return
)()
