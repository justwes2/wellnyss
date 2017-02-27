class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.integer :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
