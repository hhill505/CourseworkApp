class Assignment < ActiveRecord::Base
  belongs_to :course
  

  validates :title, :description, :course, presence: true
end
