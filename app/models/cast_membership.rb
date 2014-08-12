class CastMembership < ActiveRecord::Base
  belongs_to :talent
  belongs_to :movie
end
