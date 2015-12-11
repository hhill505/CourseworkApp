class Course < ActiveRecord::Base
	belongs_to :professor
	has_many :assignments

	validates :name, :credits, :description, presence: true 
end
