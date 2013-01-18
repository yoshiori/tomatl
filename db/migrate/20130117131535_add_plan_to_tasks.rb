class AddPlanToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :plan, :integer, :null => false, :default => 1
  end
end
