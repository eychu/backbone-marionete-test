class Moar.Models.MetadataType extends Backbone.Model
  url: ->
    BackendRoutes.api_frontend_metadata_type_path(@get('id'))
