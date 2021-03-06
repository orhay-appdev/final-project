class ComposersController < ApplicationController
  def index
    @users = User.all
    render("composer_templates/index.html.erb")
  end

  def show
    @user = User.find(params.fetch("id_to_display"))
    @recommends = Recommend.all
    @playlists = Playlist.all
    render("composer_templates/show.html.erb")
  end

end
