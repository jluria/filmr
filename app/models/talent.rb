class Talent < ActiveRecord::Base
  has_many :crew_memberships
  has_many :movies, through: :crew_memberships

  has_many :cast_memberships
  has_many :movies, through: :cast_memberships
end
