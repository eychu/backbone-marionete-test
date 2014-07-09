class Moar.Controllers.MetadataTypes extends Backbone.Marionette.Controller
  layout: new Moar.Views.MetadataTypes.Layout

  index: (params) ->
    metadataTypes = new Moar.Collections.MetadataTypes

    metadataTypesLayout = @layout
    metadataTypes.fetch().done (data, text_status, jqXHR)->
      Moar.content.show metadataTypesLayout
      metadataTypesIndex = new Moar.Views.MetadataTypes.Index collection: metadataTypes
      metadataTypesLayout.content.show metadataTypesIndex

  show: (id, params) ->
    metadataType = new Moar.Models.MetadataType id: id

    metadataTypesLayout = @layout
    metadataType.fetch().done ->
      Moar.content.show metadataTypesLayout
      metadataTypeShow = new Moar.Views.MetadataTypes.Show model: metadataType
      metadataTypesLayout.content.show metadataTypeShow
