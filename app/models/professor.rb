class Professor < ActiveRecord::Base
  has_many :courses

  validates :firstname, :lastname, :department, :email, :location, :password, presence: true
end
