require 'rails_helper'

RSpec.describe "pins/edit", type: :view do
  before(:each) do
    @pin = assign(:pin, Pin.create!(
      :name => "MyString",
      :image => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit pin form" do
    render

    assert_select "form[action=?][method=?]", pin_path(@pin), "post" do

      assert_select "input#pin_name[name=?]", "pin[name]"

      assert_select "input#pin_image[name=?]", "pin[image]"

      assert_select "input#pin_description[name=?]", "pin[description]"
    end
  end
end
