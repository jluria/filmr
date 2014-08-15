class Admin::TalentsController < AdminController
  def new
    @talent = Talent.new
  end

  def create
    talent = Talent.create(talent_params)
    redirect_to talent
  end

  def destroy
    talent = Talent.find(params[:id])
    talent.destroy
    redirect_to talents_path
  end

  private

  def talent_params
    params.require(:talent).permit(:name)
  end
end
