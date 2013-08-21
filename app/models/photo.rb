class Photo < ActiveRecord::Base
  attr_accessible :photo, :name, :description, :album_id
  validates_presence_of :photo
  has_attached_file :photo, :styles => {:thumb => "120x120>", :small => "200x200>", :large => "600x400>"}
  has_many :comments
  has_one :album
end
