require 'rails_helper'

RSpec.describe User, type: :model do

  it "user is valid" do
    user = build(:user)
    expect(user).to be_valid
  end





end
