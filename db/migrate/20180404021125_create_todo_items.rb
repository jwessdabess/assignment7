class CreateTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :task_title
      t.string :description
      t.boolean :done
      t.references :todo_list, index: true
      
      t.timestamps
    end
  end
end
