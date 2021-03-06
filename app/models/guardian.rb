class Guardian < ActiveRecord::Base
  has_and_belongs_to_many :students
  validates :first_name, presence: true
  validates :last_name, presence: true
end
