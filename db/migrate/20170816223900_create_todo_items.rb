class CreateTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_items do |t|
      t.string   :title
      t.text     :description
      t.datetime :completed_at
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean  :finished
    end
  end
end
