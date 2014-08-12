class TalentsController < ApplicationController

  def index
    @talent = Talent.all
  end

  def new
    @talent = Talent.new
  end

  def show
    @talent = Talent.find(params[:id])
  end


  def create
    @talent = Talent.new(talent_params)
    @talent.save
    redirect_to @talent 
  end

  private

  def talent_params
    params.require(:talent).permit(:name)
  end
end
