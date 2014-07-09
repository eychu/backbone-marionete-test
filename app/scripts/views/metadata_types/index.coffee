class Moar.Views.MetadataTypes.IndexItem extends Backbone.Marionette.ItemView
  tagName: 'tr'
  template: 'app/scripts/templates/metadata_types/index_item.ejs'
  model: Moar.Models.MetadataType

class Moar.Views.MetadataTypes.Index extends Backbone.Marionette.CompositeView
  tagName: 'div'
  template: 'app/scripts/templates/metadata_types/index.ejs'
  childView: Moar.Views.MetadataTypes.IndexItem
  childViewContainer: 'tbody'

