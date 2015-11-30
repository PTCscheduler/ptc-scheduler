class Student < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :guardians
  validates :first_name, presence: true
  validates :last_name, presence: true
end
