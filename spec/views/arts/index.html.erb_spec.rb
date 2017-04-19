require 'rails_helper'

RSpec.describe "arts/index", type: :view do
  before(:each) do
    assign(:arts, [
      Art.create!(
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :type => "Type",
        :size => "Size",
        :medium => "Medium",
        :location => "Location",
        :user => nil
      ),
      Art.create!(
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :type => "Type",
        :size => "Size",
        :medium => "Medium",
        :location => "Location",
        :user => nil
      )
    ])
  end

  it "renders a list of arts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Medium".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
