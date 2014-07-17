class Moar.Models.Metadata extends Backbone.Model
  url: ->
    BackendRoutes.api_frontend_metadata_type_path(@get('id'))
