class Album < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :photos
end
