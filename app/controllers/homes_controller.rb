class HomesController < ApplicationController
  def show
    @user = User.new
    @movies = Movie.all
  end
end
