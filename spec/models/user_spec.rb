require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if level is not 1" do
    user = build(:user, level: FFaker::Random.rand(1000..9999))
    expect(user).to_not be_valid
  end

  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %w[knight wizard].sample
    level = FFaker::Random.rand(1..99)

    user = create(:user, nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end

# RSpec.describe User, type: :model do
#   it "is invalid if the level is not between 1 and 99" do
#     nickname = FFaker::Name.first_name
#     kind = %i[knight wizard].sample
#     level = FFaker::Random.rand(100..9999)
#     user = User.new(nickname: nickname, kind: kind, level: level)
#
#     expect(user).to_not be_valid
#   end
#
#   it "returns the correct hero title" do
#     nickname = FFaker::Name.first_name
#     kind = %i[knight wizard].sample
#     level = FFaker::Random.rand(1..99)
#
#     user = User.create(nickname: nickname, kind: kind, level: level)
#     expect(user.title).to eq("#{kind} #{nickname} ##{level}")
#   end
#
# end

################################################################################################################
# RSpec.describe User, type: :model do
#   it "is invalid if the level is not between 1 and 99" do
#     expect(User.create(nickname: 'Chronos', kind: :wizard, level: 100)).to_not be_valid
#   end

#   it "returns the correct hero title" do
#    user = User.create(nickname: 'Chronos', kind: :wizard, level: 1)
#    expect(user.title). to ed('wizard Chronos #1')
#   end
# end
################################################################################################################
#espera que NÃO seja valio >> to_not be_valid

#is invalid if the level is not between 1 and 99 = é inválido se o nível não estiver entre 1 e 99
#returns the correct hero title = retorna o título de herói correto