class Concert < ActiveRecord::Base
  has_many :bids
  mount_uploader :image, S3Uploader
end
