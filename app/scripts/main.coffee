#todo вынести в хелперы
getCookie = (name) ->
  matches = document.cookie.match(new RegExp('(?:^|; )' + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + '=([^;]*)'))
  (if matches then decodeURIComponent(matches[1]) else `undefined`)

$.ajaxSetup
  beforeSend: (xhr) ->
    xhr.setRequestHeader 'X-CSRF-Token', getCookie('_csrf_token')

window.Moar =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'

$ ->
  'use strict'
  Moar.init()
