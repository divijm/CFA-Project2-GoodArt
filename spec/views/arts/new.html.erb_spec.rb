require 'rails_helper'

RSpec.describe "arts/new", type: :view do
  before(:each) do
    assign(:art, Art.new(
      :title => "MyString",
      :description => "MyText",
      :price => "9.99",
      :type => "",
      :size => "MyString",
      :medium => "MyString",
      :location => "MyString",
      :user => nil
    ))
  end

  it "renders new art form" do
    render

    assert_select "form[action=?][method=?]", arts_path, "post" do

      assert_select "input#art_title[name=?]", "art[title]"

      assert_select "textarea#art_description[name=?]", "art[description]"

      assert_select "input#art_price[name=?]", "art[price]"

      assert_select "input#art_type[name=?]", "art[type]"

      assert_select "input#art_size[name=?]", "art[size]"

      assert_select "input#art_medium[name=?]", "art[medium]"

      assert_select "input#art_location[name=?]", "art[location]"

      assert_select "input#art_user_id[name=?]", "art[user_id]"
    end
  end
end
