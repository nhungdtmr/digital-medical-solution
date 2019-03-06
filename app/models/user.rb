class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments
  has_many :emotions
  has_many :videos
  enum role: %i(member admin guest)

  scope :order_by, -> {order created_at: :desc}
  scope :select_users, -> {select :id, :name}
end
