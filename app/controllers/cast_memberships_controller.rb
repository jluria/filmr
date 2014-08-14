class CastMemberships < ActiveRecordController

  def show
    @cast_membership = Cast_membership.find(params[:id])
  end

end
