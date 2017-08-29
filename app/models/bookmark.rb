class Bookmark < ApplicationRecord
  belongs_to :topic
  has_many :likes, dependent: :destroy

  scope :liked_by, ->(user) { where(user_id: user.id) }

  def user
    topic.user
  end



end
