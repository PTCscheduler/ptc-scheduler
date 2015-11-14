class Student < ActiveRecord::Base
  has_many_and_belongs_to :teachers
  validates :first_name, presence: true
  validates :last_name, presence: true
end
