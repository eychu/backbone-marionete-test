#global Moar, Backbone

Moar.Routers = Moar.Routers or {}
(->
  'use strict'

  class Moar.Routers.User extends Backbone.Router
    routes:
      'users/:id': 'show'

    show: (id, params) ->
      console.log('show')
      user = new Moar.Models.User id: id

      user.fetch().done( =>
        view = new Moar.Views.User model: user, el: $('.content')
        view.render()
      )

)()
