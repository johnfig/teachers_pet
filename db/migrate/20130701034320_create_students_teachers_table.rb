class CreateStudentsTeachersTable < ActiveRecord::Migration
  def self.up
    create_table :students_teachers, :id => false do |t|
        t.references :student
        t.references :teacher
    end
    add_index :students_teachers, [:student_id, :teacher_id]
    add_index :students_teachers, :teacher_id
  end

  def self.down
    drop_table :students_teachers
  end
end
