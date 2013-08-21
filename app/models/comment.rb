class Comment < ActiveRecord::Base
  attr_accessible :description, :photo_id
  has_one :photo
end
