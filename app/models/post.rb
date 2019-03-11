class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :emotions
  mount_uploader :thumbnail, PictureUploader

  delegate :name, to: :category, prefix: :category, allow_nil: true
  delegate :name, to: :user, prefix: :user, allow_nil: true
  scope :order_by, -> {order created_at: :desc}
end
