require 'rails_helper'

RSpec.describe "pins/index", type: :view do
  before(:each) do
    assign(:pins, [
      Pin.create!(
        :name => "Name",
        :image => "Image",
        :description => "Description"
      ),
      Pin.create!(
        :name => "Name",
        :image => "Image",
        :description => "Description"
      )
    ])
  end

  it "renders a list of pins" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
