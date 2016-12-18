class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :player
      t.integer :points, default: 0
      t.string :state

      t.timestamps
    end
  end
end
