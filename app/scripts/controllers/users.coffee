class Moar.Controllers.Users extends Backbone.Marionette.Controller
  layout: new Moar.Views.Users.Layout

  show: (id, params) ->
    user = new Moar.Models.User id: id

    usersLayout = @layout
    user.fetch().done ->
      Moar.content.show usersLayout
      usersShow = new Moar.Views.Users.Show model: user
      usersLayout.content.show usersShow
