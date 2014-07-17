class Moar.Controllers.Metadatas extends Backbone.Marionette.Controller
  layout: new Moar.Views.Metadatas.Layout

  index: (params) ->
    metadatas = new Moar.Collections.Metadatas

    metadatasLayout = @layout
    metadatas.fetch().done (data, text_status, jqXHR)->
      Moar.content.show metadatasLayout
      metadatasIndex = new Moar.Views.Metadatas.Index collection: metadatas
      metadatasLayout.content.show metadatasIndex

  show: (id, params) ->
    metadata = new Moar.Models.Metadata id: id

    metadatasLayout = @layout
    metadata.fetch().done ->
      Moar.content.show metadatasLayout
      metadataShow = new Moar.Views.Metadatas.Show model: metadata
      metadatasLayout.content.show metadataShow

  new: (params) ->
    metadata = new Moar.Models.Metadata

    Moar.content.show @layout
    metadataNew = new Moar.Views.Metadatas.New model: metadata
    @layout.content.show metadataNew
