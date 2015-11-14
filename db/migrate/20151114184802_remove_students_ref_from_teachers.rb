class RemoveStudentsRefFromTeachers < ActiveRecord::Migration
  def change
    remove_reference :teachers, :student, index: true
  end
end
