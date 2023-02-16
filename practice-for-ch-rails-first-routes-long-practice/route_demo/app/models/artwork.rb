class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :artist}
    validates :artist, presence: true
    validates :image_url, presence: true
  end