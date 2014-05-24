class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
