class RenameLastNameToAccount < ActiveRecord::Migration[5.1]
  def change
  	rename_column :accounts, :lasst_name, :last_name 
  end
end
