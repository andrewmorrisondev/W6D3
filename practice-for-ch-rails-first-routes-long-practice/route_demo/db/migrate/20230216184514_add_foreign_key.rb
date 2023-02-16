class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :artworks, :artist

    add_column :artworks, :artist_id, :bigint, null: false
    add_foreign_key :artworks, :users, column: :artist_id
  end
end
