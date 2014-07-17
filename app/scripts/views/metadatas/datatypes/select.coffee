class Moar.Views.Metadatas.Datatypes.Select extends Backbone.Marionette.ItemView
  tagName: 'div'

  templates:
    'edit': 'app/scripts/templates/metadatas/datatypes/select/edit.ejs'
    'show': 'app/scripts/templates/metadatas/datatypes/select/show.ejs'

  events:
    'change textarea[name="values"]': 'valuesChanged'
    'keyup textarea[name="values"]': 'valuesChanged'

  initialize: (params = { mode: 'show'})->
    @template = @templates[params.mode]

  valuesChanged: (params)->
    values = $('textarea[name="values"]').val().split("\n")
    values = (value for value in values when value)

    valueOptions = values.map (value)->
      option = $('<option></option>')
      option.html(value)
      option.attr('value', value)
      option

    defaultValueOption = $('<option value="">Не выбрано</option>')
    valueOptions.unshift defaultValueOption

    select = $('select[name="default"]')
    select.html('')
    valueOptions.map (valueOption)->
      select.append(valueOption)


