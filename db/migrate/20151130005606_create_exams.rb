class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :course
      t.string :section
      t.string :exam_day
      t.date :exam_date
      t.string :start_time
      t.string :end_time
      t.string :location
      t.string :notes

      t.timestamps null: false
    end
  end
end
