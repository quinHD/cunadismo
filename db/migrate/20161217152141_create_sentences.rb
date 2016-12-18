class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.text :description
      t.boolean :truth

      t.timestamps
    end
  end
end
