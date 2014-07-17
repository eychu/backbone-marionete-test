class Moar.Views.Metadatas.New extends Backbone.Marionette.ItemView
  tagName: 'div'
  template: 'app/scripts/templates/metadatas/new.ejs'
  model: Moar.Models.Metadata

  events:
    'change select#datatype': 'datatypeSelectChanged'

  onRender: ->
    @viewDatatypeSubview('string')

  datatypeSelectChanged: (params)->
    datatype = params.currentTarget.value
    @viewDatatypeSubview(datatype)

  viewDatatypeSubview: (datatype)->
    switch datatype
      when 'string'
        datatypeView = new Moar.Views.Metadatas.Datatypes.String { mode: 'edit' }
      when 'text'
        datatypeView = new Moar.Views.Metadatas.Datatypes.Text { mode: 'edit' }
      #when 'date'
      #when 'datetime'
      #when 'number'
      #when 'boolean'
      when 'select'
        datatypeView = new Moar.Views.Metadatas.Datatypes.Select { mode: 'edit' }

    @$el.find('#datatype-layout').html(datatypeView.render().el) if datatypeView
