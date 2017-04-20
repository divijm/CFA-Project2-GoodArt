require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :description => "MyText",
        :user => nil,
        :art => nil
      ),
      Artist.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :description => "MyText",
        :user => nil,
        :art => nil
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
