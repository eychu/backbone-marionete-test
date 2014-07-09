class Moar.Controllers.MetadataTypes extends Backbone.Marionette.Controller
  layout: new Moar.Views.MetadataTypes.Layout

  show: (id, params) ->
    metadataType = new Moar.Models.MetadataType id: id

    metadataTypeLayout = @layout
    metadataType.fetch().done ->
      Moar.content.show metadataTypeLayout
      metadataTypeShow = new Moar.Views.MetadataTypes.Show model: metadataType
      metadataTypeLayout.content.show metadataTypeShow
