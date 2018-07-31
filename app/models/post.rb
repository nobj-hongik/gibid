class Post < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :comments
  has_many :bids
  mount_uploader :image, S3Uploader
end
