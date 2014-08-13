class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :rating
end
