class Topic < ApplicationRecord
  validates_presence_of :title
  belongs_to :user
  has_many :bookmarks, dependent: :destroy

  def slug
    title.gsub(/\s+/, "-").downcase
  end
end
