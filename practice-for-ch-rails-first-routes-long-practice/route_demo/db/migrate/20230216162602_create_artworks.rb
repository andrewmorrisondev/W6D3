class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.bigint :artist, null: false, foreign_key: {to_table: :users}
      t.index ["title", "artist"], name: "index_artist_title", unique: true
      t.string :image_url, null: false, unique: true
      t.timestamps
    end
  end
end
