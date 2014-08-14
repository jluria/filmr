class CastMemberships < ApplicationController
  def show
    @cast_membership = Cast_membership.find(params[:id])
  end
end
