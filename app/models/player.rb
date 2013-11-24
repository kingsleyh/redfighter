class Player < ActiveRecord::Base

  include Broadcast

  has_many :attacks
  has_many :shields
  has_many :spells
  belongs_to :group
  belongs_to :room

  def level=(level)
    broadcast("/messages/new",level)
    write_attribute(:level, level)
  end

end



