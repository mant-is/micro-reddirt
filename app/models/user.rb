class User < ApplicationRecord
  has_many :comments, through: :posts
  has_many :posts, dependent: :destroy

  validates :email, email: true
  validates :username, length: { minimum: 5 }, presence: true
end
