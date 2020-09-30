class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.json :data, null: false
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
