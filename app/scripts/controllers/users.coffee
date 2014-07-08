class Moar.Controllers.Users extends Backbone.Marionette.Controller
  initialize: ->
    @layout = new Moar.Views.Users.Layout

  show: (id, params) ->
    user = new Moar.Models.User id: id

    user.fetch().done ->
      Moar.content.show @layout
      usersShow = new Moar.Views.Users.Show model: user
      usersLayout.user.show usersShow
