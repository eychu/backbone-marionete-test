class Moar.Views.Metadatas.IndexItem extends Backbone.Marionette.ItemView
  tagName: 'tr'
  template: 'app/scripts/templates/metadatas/index_item.ejs'
  model: Moar.Models.Metadata

class Moar.Views.Metadatas.Index extends Backbone.Marionette.CompositeView
  tagName: 'div'
  template: 'app/scripts/templates/metadatas/index.ejs'
  childView: Moar.Views.Metadatas.IndexItem
  childViewContainer: 'tbody'
