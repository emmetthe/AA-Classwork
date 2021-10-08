# == Schema Information
#
# Table name: likes
#
#  id            :bigint           not null, primary key
#  user_id       :integer          not null
#  likeable_type :string
#  likeable_id   :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Like < ApplicationRecord

  validates :user_id, uniqueness: {scope: [:likeable_id, :likeable_type], message: "must have unique like"}

  belongs_to :likeable, polymorphic: true 
  
end

#add_index :likes, [:user_id, :likeable_id, :likeable_type], unique: true