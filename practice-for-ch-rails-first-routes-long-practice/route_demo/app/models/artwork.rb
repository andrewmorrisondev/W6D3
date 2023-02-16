# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :bigint           not null
#
class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :artist}
    validates :artist, presence: true
    validates :image_url, presence: true

    has_many :artwork_shares, class_name: :ArtworkShare, foreign_key: :artwork_id

    has_many :shared_viewers, 
      through: :artwork_shares, 
      source: :viewer

    belongs_to :artist, class_name: :User, foreign_key: :artist_id
  end
