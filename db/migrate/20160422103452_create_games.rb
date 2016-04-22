class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.decimal :rating
      t.string :picture
      t.date :published_at
      t.references :console, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
