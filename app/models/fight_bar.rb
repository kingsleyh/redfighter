class FightBar < ActiveRecord::Base

  belongs_to :player

  def slots
    [slot_1,slot_2,slot_3,slot_4,slot_5].map{|i| item(i)}
  end

  private
  def item(slot)
    a = FightItem.where(:id => slot)
    a.empty? ? OpenStruct.new(:name => 'empty') : a.first
  end

end
