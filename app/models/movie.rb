class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :rating

  has_many :cast_memberships
  has_many :talents, through: :cast_memberships
end
