class Teacher < ActiveRecord::Base
  has_many :students
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
