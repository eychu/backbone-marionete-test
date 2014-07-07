#global Moar, Backbone

Moar.Models = Moar.Models or {}
(->
  'use strict'

  class Moar.Models.User extends Backbone.Model
    #todo переделать роуты
    urlRoot: 'http://inhouse.local1.test/api/frontend/users/'

)()
