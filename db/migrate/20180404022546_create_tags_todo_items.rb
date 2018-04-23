class CreateTagsTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :tags_todo_items, id:false do |t|
      t.references :tag, index: true
      t.references :todo_item, index: true
    end
  end
end
