Backbone.Marionette.Renderer.render = (template, data) ->
  if JST[template]
    JST[template](data)
  else if _.isFunction(template)
    template(data)
  else
    console.error "Template #{template} not found"

window.Moar = new Backbone.Marionette.Application()

Moar.Models = {}
Moar.Collections = {}
Moar.Views = { Users: {}, Metadatas: { Datatypes: {} } }
Moar.Controllers = {}
Moar.Routers = {}

Moar.addInitializer ->
  usersRouter = new Moar.Routers.Users
  metadatasRouter = new Moar.Routers.Metadatas
  Backbone.history.start()

Moar.addRegions
  content: "#content"

$ ->
  Moar.start()
