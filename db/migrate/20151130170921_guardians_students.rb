class GuardiansStudents < ActiveRecord::Migration
  def change
    create_table :guardians_students, :id => false do |t|
          t.integer :guardian_id
          t.integer :student_id
    end
  end
end
