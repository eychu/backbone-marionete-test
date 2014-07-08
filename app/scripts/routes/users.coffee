class Moar.Routers.Users extends Backbone.Router
  routes:
    'users/:id': 'show'

  show: (id, params) ->
    user = new Moar.Models.User id: id

    user.fetch().done ->
      usersLayout = new Moar.Views.Users.Layout
      Moar.content.show usersLayout
      usersShow = new Moar.Views.Users.Show model: user
      usersLayout.user.show usersShow
