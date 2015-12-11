class Student < ActiveRecord::Base
	has_many :enrollments

	validates :firstname, :lastname, :major, :year, :netid, :email, :password, presence: true
end
