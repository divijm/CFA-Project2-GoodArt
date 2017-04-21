require 'rails_helper'

RSpec.describe User, type: :model do

  it "user is valid" do
    # build user object with factory girl
    # difference between CREATE and BUILD
    user = build(:user)
  require 'pry'; binding.pry
    expect(user).to be_valid
  end

  it "can't create user without password" do
    # build user object with factory girl
    user = build(:user, :password => nil)

    expect(user).to_not be_valid
  end

  # it "can't create user without password" do
  #   # build user object with factory girl
  #   user = build(:user, :password => nil)
  #
  #   expect(user).to_not be_valid
  # end



end
