# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  img_url    :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  validates :artist_id, uniqueness: {scope: :title, message: 'artist_id and title must be unique combinations'}
  validates :title, :img_url, :artist_id, presence: true

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :artwork_shares

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

  has_many :comments, dependent: :destroy

  has_many :likes, as: :likeable

end
