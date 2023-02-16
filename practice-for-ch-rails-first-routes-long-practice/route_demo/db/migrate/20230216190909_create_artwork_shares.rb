class CreateArtworkShares < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_shares do |t|
      t.references :artwork, null: false, foreign_key: {to_table: :artworks}, index: true
      t.references :viewer, null: false, foreign_key: {to_table: :users}, index: true

      t.index ["artwork_id", "viewer_id"], name: "artwork_viewer", unique: true

      t.timestamps
    end
  end
end
