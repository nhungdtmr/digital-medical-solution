class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  delegate :name, :avatar, :email, to: :user, prefix: :user, allow_nil: true
  acts_as_tree order: "created_at DESC"
end
