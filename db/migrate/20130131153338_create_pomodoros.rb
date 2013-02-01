class CreatePomodoros < ActiveRecord::Migration
  def change
    create_table :pomodoros do |t|
      t.references :task
      t.date :finished_at

      t.timestamps
    end
    add_index :pomodoros, :task_id
  end
end
