require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :description => "MyText",
      :user => nil,
      :art => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
