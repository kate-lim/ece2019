class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :term
      t.boolean :is_coop
      t.string :stream
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
