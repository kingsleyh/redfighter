class Player < ActiveRecord::Base

  has_many :attacks
  has_many :shields
  has_many :spells
  belongs_to :group
  belongs_to :room

end
