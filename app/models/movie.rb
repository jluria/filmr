class Movie < ActiveRecord::Base
  has_many :cast_memberships
  has_many :talents, through: :cast_memberships
end
