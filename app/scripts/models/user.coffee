class Moar.Models.User extends Backbone.Model
  url: ->
    BackendRoutes.api_frontend_user_path(@get('id'))
