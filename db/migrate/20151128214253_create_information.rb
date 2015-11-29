class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string	:category
      t.string	:title
      t.string	:description
      t.string	:url
      t.date	:published_date

      t.timestamps null: false
    end
  end
end
