class Player < ActiveRecord::Base

  include DirtyAssociations

  has_and_belongs_to_many :attacks, :after_add => :make_dirty
  has_and_belongs_to_many :shields, :after_add => :make_dirty
  has_and_belongs_to_many :spells, :after_add => :make_dirty
  has_many :strategies, :after_add => :make_dirty
  belongs_to :group
  belongs_to :room
  belongs_to :user

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

  def active_fights
    Fight.where("fighter_1_id = ? or fighter_2_id = ? and status = 'active'", id,id)
  end

  after_update :update_player_info, :update_room_info

  def update_player_info
    broadcast("/player/#{id}", {:attr => :player_info, :data => apply('games/_player_info', :player => self)})
    broadcast("/player/#{id}", {:attr => :strategy_info, :data => apply('games/_strategies', :player => self)})
  end

  def update_room_info
    Room.all.each do |room|
      puts "room: #{room.id}"
      room.players.each do |p|
        puts "player: #{p.name}"
        broadcast("/player/#{p.id}", {:attr => :update_room, :data => apply('games/_room_info', :player => p)})
      end
    end
  end

end



