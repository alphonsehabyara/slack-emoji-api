class CreateSlackEmojis < ActiveRecord::Migration[5.0]
  def change
    create_table :slack_emojis do |t|
      t.string :people
      t.string :nature
      t.string :food_and_drink
      t.string :celebration
      t.string :activity
      t.string :travel_and_places
      t.string :objects_and_symbols
      t.string :custom
      t.string :emoji

      t.timestamps
    end
  end
end
