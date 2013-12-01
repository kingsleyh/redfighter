class Player < ActiveRecord::Base

  include DirtyAssociations

  has_and_belongs_to_many :fight_items, :after_add => :make_dirty
  has_many :fight_bars, :after_add => :make_dirty
  belongs_to :group
  belongs_to :room
  belongs_to :user

  include Broadcast
  include Templator

  def attacks
    fight_items.where(:kind == 'attack')
  end

  def shields
    fight_items.where(:kind == 'shield')
  end

  def spells
    fight_items.where(:kind == 'spell')
  end

  def level=(level)
    broadcast("/player/#{id}", {:attr => :level, :data => level})
    write_attribute(:level, level)
  end

  def health=(health)
    broadcast("/player/#{id}", {:attr => :health, :data => health})
    write_attribute(:health, health)
  end

  def active_bar
    fight_bars.map{| bar| bar if bar.active }.compact.first
  end

  after_update :update_player_info, :update_room_info

  def update_player_info
    broadcast("/player/#{id}", {:attr => :player_info, :data => apply('games/_player_info', :player => self)})
    broadcast("/player/#{id}", {:attr => :fight_bar_info, :data => apply('games/_fight_bars', :player => self)})
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



