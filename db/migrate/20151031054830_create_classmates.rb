class CreateClassmates < ActiveRecord::Migration
  def change
    create_table :classmates do |t|
      t.string :name
      t.string :githubProfile
      t.string :website

      t.timestamps
    end
  end
end
