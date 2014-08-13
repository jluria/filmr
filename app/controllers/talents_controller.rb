class TalentsController < ApplicationController

  def index
    @talent = Talent.all
  end

  def show
    @talent = Talent.find(params[:id])
  end

  private

  def talent_params
    params.require(:talent).permit(:name)
  end
end
