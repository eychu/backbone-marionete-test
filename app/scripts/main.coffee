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
Moar.Views = { Users: {}, MetadataTypes: {} }
Moar.Routers = {}
Moar.Controllers = {}

Moar.addInitializer ->
  usersRouter = new Moar.Routers.Users
  metadataTypesRouter = new Moar.Routers.MetadataTypes
  Backbone.history.start()

Moar.addRegions
  content: "#content"

$ ->
  Moar.start()
