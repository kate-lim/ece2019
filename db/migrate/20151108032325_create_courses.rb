class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :subject
      t.string :number
      t.string :term
      t.string :major
      t.string :title
      t.decimal :units
      t.string :description

      t.timestamps null: false
    end
  end
end
