class Student < ActiveRecord::Base
  belongs_to :teachers
  validates :first_name, presence: true
  validates :last_name, presence: true
end
