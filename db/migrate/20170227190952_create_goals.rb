class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.text :goal_string
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
