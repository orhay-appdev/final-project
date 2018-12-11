class MainsController < ApplicationController
  def index
    @users = User.all
    @recommends = Recommend.all
    @recommend = @recommends.sample
    render("main_templates/index.html.erb")
  end
  
  def spotify
    @users = User.all
    @recommends = Recommend.all
    @recommend = @recommends.sample
    render("main_templates/spotify.html.erb")
  end

end
