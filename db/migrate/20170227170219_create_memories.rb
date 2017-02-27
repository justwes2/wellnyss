class CreateMemories < ActiveRecord::Migration[5.0]
  def change
    create_table :memories do |t|
      t.string :narrative
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
