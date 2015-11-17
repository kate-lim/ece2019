class AddAvatarToClassmates < ActiveRecord::Migration
  def change
    add_column :classmates, :avatar, :string
  end
end
