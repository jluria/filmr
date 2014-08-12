class MoviesController < ApplicationController
  
  def index
    @movie = Movie.all 
  end
  

  def new
    @movie = Movie.new
  end


  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title)
  end
end
