class Movie < ActiveRecord::Base
  validates :title, presence: true

  has_many :cast_memberships
  has_many :talents, through: :cast_memberships
  has_many :crew_memberships
  has_many :talents, through: :crew_memberships
end
