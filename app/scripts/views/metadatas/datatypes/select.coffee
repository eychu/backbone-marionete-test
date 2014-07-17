class Moar.Views.Metadatas.Datatypes.Select extends Backbone.Marionette.ItemView
  tagName: 'div'

  templates:
    'edit': 'app/scripts/templates/metadatas/datatypes/select/edit.ejs'
    'show': 'app/scripts/templates/metadatas/datatypes/select/show.ejs'

  initialize: (params = { mode: 'show'})->
    @template = @templates[params.mode]


