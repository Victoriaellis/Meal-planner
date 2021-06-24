class CreateDecisions < ActiveRecord::Migration[6.0]
  def change
    create_table :decisions do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :weekday, null: false, foreign_key: true

      t.timestamps
    end
  end
end
