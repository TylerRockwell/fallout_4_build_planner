class Build < ActiveRecord::Base
  has_many :special_stats, dependent: :destroy
  has_many :perks, dependent: :destroy

  accepts_nested_attributes_for :special_stats, :perks

  before_create :initialize_stats

  protected
  def initialize_stats
    set_special
    set_perks
  end

  def set_special
    all_specials = SpecialStatType.all
    all_specials.each do |special|
      stat = SpecialStat.new(special_stat_type_id: special.id, level: 1)
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
