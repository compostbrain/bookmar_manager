class Bookmark < ApplicationRecord
  belongs_to :topic
  def user
    topic.user
  end

end
