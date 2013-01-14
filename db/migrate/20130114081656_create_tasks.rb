class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user
      t.string :name
      t.date :finished_at

      t.timestamps
    end
    add_index :tasks, :user_id
  end
end
