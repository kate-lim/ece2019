class AddApprovedToClassmate < ActiveRecord::Migration
  def change
    add_column :classmates, :approved, :boolean, :default => false, :null => false
    add_index  :classmates, :approved
  end
end