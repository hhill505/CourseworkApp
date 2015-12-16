class Student < ActiveRecord::Base
	has_many :enrollments
	has_many :courses, through: :enrollments 
	has_many :assignments, through: :courses

	validates :firstname, :lastname, :major, :year, :netid, :email, :password, presence: true
	validates :netid, uniqueness: true
end
