class Room < ActiveRecord::Base

  belongs_to :area
  has_many :exits
  has_many :players


end
