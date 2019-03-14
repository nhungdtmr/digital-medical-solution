class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :emotions
  mount_uploader :thumbnail, PictureUploader
  acts_as_votable

  delegate :name, to: :category, prefix: :category, allow_nil: true
  delegate :name, to: :user, prefix: :user, allow_nil: true
  scope :order_by, -> {order created_at: :desc}
  scope :filter_post_by_type, -> category_name {Post.includes(:category)
    .where(categories: {name: category_name}) unless category_name.nil?}
end
