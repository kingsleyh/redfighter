class Player < ActiveRecord::Base

  include DirtyAssociations

  has_many :attacks, :after_add => :make_dirty
  has_many :shields, :after_add => :make_dirty
  has_many :spells, :after_add => :make_dirty
  belongs_to :group
  belongs_to :room

  include Broadcast
  include Templator

  def level=(level)
    broadcast("/player/#{id}", {:attr => :level, :data => level})
    write_attribute(:level, level)
  end

  def health=(health)
    broadcast("/player/#{id}", {:attr => :health, :data => health})
    write_attribute(:health, health)
  end

  after_update :update_player_info

  def update_player_info
    broadcast("/player/#{id}",{:attr => :player_info, :data => apply('games/_player_info',:player => self)})
    broadcast("/player/#{id}",{:attr => :room_info, :data => apply('games/_room_info',:player => self)})
  end

end



