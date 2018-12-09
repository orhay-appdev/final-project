class MainsController < ApplicationController
  def index
    @users = User.all
    @recommends = Recommend.all
    @recommend = @recommends.sample
    render("main_templates/index.html.erb")
  end

end
