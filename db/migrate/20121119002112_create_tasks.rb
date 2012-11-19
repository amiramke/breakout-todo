class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.references :todo_list

      t.timestamps
    end
    add_index :tasks, :todo_list_id
  end
end
