# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  validates :username, presence: true

  has_many :artworks, class_name: :Artwork, foreign_key: :artist_id, primary_key: :id, dependent: :destroy
  has_many :artwork_shares, class_name: :ArtworkShare, foreign_key: :viewer_id

  has_many :shared_artworks,
    through: :artwork_shares,
    source: :artwork

  def self.find_shared_and_owned_artworks
    Artwork.left_outer_joins(:shared_artworks).where()
  end
    
end
