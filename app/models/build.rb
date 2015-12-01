class Build < ActiveRecord::Base
  has_many :special_stats
  has_many :perks

  accepts_nested_attributes_for :special_stats, :perks

  after_initialize :initialize_stats

  protected
  def initialize_stats
    set_special
    set_perks
  end

  def set_special
    (1..7).each do |x|
      stat = SpecialStat.new(special_stat_type_id: x, level: 1)
      special_stats << stat
    end
  end

  def set_perks
    perk_types = PerkType.all
    perk_types.each do |perk_type|
      perks << Perk.new(current_rank: 0, perk_type: perk_type)
    end
  end
end
