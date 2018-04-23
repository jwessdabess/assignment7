class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :gender
      t.integer :age
      t.string :first_name
      t.string :lasst_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
