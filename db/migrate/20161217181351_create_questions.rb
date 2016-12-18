class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :game
      t.references :sentence
      t.boolean :answer

      t.timestamps
    end
  end
end
