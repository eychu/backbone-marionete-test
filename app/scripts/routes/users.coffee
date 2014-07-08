class Moar.Routers.Users extends Backbone.Marionette.AppRouter
  controller: new Moar.Controllers.Users
  appRoutes:
    'users/:id': 'show'

