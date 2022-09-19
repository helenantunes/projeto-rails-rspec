FactoryBot.define do
  factory :weapon do
    name {FFaker::Name.first_name}
    description {FFaker::Lorem.word}
    power_base {FFaker::Number.rand(1000..3000)}
    power_step {FFaker::Number.rand(100..300)}
  end
end
