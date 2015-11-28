class CreateElectives < ActiveRecord::Migration
  def change
    create_table  :electives do |t|
      t.string    :elective_type
      t.string    :list
      t.string    :subject
      t.string    :number
      t.boolean   :lab
      t.string    :notes
      t.string    :title
      t.decimal   :units
      t.string    :description

      t.timestamps null: false
    end
  end
end
