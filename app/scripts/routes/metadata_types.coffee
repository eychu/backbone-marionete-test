class Moar.Routers.MetadataTypes extends Backbone.Marionette.AppRouter
  controller: new Moar.Controllers.MetadataTypes
  appRoutes:
    'metadata_types': 'index'
    'metadata_types/:id': 'show'
