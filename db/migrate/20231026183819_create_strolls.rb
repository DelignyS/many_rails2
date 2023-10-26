class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.date :date
      t.references :dog, foreign_key: true
      t.references :dogsitter, foreign_key: true

      t.timestamps
    end
  end
end
