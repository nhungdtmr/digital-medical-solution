class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :emotions
  has_many :videos

  validate :name
end
