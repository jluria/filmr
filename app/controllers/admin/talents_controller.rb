class Admin::TalentsController < AdminController
  
  def new
    @talent = Talent.new
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
