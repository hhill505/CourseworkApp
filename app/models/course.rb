class Course < ActiveRecord::Base
	belongs_to :professor
	has_many :assignments 
	has_many :enrollments
	has_many :students, through: :enrollments
	

	validates :name, :credits, :description, presence: true 
end
