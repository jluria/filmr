class TalentsController < ApplicationController

def index
    @casts = Cast.all
  end

  def show
    @cast = Cast.new
  end

  def create
    @cast = Cast.new(cast_params)
    @cast.save
    redirect_to cast_path
  end
end
