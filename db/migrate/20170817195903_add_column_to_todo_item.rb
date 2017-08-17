class AddColumnToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_items, :due_date, :date
  end
end
