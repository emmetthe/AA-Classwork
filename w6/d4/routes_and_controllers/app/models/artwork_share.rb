# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint           not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ArtworkShare < ApplicationRecord
  validates :artwork_id, uniqueness: {scope: :viewer_id, message: 'artwork_id and viewer_id must be unique combinations'}
  validates :artwork_id, :viewer_id, presence: true

  belongs_to :viewer,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :User

  belongs_to :artwork
  
end
