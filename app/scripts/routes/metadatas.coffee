class Moar.Routers.Metadatas extends Backbone.Marionette.AppRouter
  controller: new Moar.Controllers.Metadatas
  appRoutes:
    'metadatas': 'index'
    'metadatas/new': 'new'
    'metadatas/:id': 'show'

