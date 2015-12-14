class Professor < ActiveRecord::Base
  has_many :courses

  validates :firstname, :lastname, :department, :email, :location, :password, presence: true
  validates :netid, uniqueness: true
end
