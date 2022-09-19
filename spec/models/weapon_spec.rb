require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "returns the correct weapon title" do
    name = FFaker::Name.first_name
    description = FFaker::BaconIpsum.sentences
    power_base = FFaker::Random.rand(1000..3000)
    power_step = FFaker::Random.rand(100..300)
    level = 3

    weapon = create(:weapon, name: name, description: description, power_base: power_base, power_step: power_step, level: level)
    expect(weapon.title).to eq("#{name} ##{level}")
  end

  it "returns the correct current_power" do
    name = FFaker::Name.first_name
    description = FFaker::BaconIpsum.sentences
    power_base = FFaker::Random.rand(1000..3000)
    power_step = FFaker::Random.rand(100..300)
    level = 1

    weapon = create(:weapon, name: name, description: description, power_base: power_base, power_step: power_step, level: level)
    expect(weapon.current_power(power_base, level, power_step)).to eq(power_base +((level - 1) * power_step))
  end
end

#####################################################################
# it "is invalid if level is not 1" do
#   name = FFaker::Name.first_name
#   description = FFaker::BaconIpsum.sentences
#   power_base = FFaker::Random.rand(1000..3000)
#   power_step = FFaker::Random.rand(100..300)
#   level = 1
#
#   create(:weapon, name: name, description: description, power_base: power_base, power_step: power_step, level: level)
#   expect(level).to eq (1)
# end
