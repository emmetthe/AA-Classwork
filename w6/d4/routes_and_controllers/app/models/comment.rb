# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  user_id    :integer          not null
#  artwork_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  validates :body, :artwork_id, :user_id, presence: true

  belongs_to :user

  belongs_to :artwork

  has_many :likes, as: :likeable

end
