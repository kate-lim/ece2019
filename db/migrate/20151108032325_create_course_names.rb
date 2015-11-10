class CreateCourseNames < ActiveRecord::Migration
  def change
    create_table :course_names do |t|
      t.string :courseName
      t.string :catalogNumber
      t.string :term
      t.string :major
      
      t.timestamps null: false
    end
  end
end
