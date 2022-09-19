class Weapon < ApplicationRecord
  validates :level, numericality: 1

  def current_power(power_base, level, power_step)
    (level-1)*power_step + power_base
  end

  def title
    "#{name} ##{level}"
  end

end
