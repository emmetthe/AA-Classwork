# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  url        :string
#  content    :string
#  sub_id     :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  validates :title, :sub_id, :author_id, presence: true

  belongs_to :sub
  
  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

end
