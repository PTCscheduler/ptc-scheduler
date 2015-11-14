class Teacher < ActiveRecord::Base
  has_many_and_belongs_to :students
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
