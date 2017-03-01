class AddDeadlineToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :deadline, :string
  end
end
