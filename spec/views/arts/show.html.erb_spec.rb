require 'rails_helper'

RSpec.describe "arts/show", type: :view do
  before(:each) do
    @art = assign(:art, Art.create!(
      :title => "Title",
      :description => "MyText",
      :price => "9.99",
      :type => "Type",
      :size => "Size",
      :medium => "Medium",
      :location => "Location",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Medium/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(//)
  end
end
