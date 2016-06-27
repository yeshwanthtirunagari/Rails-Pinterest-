require 'rails_helper'

RSpec.describe "pins/show", type: :view do
  before(:each) do
    @pin = assign(:pin, Pin.create!(
      :name => "Name",
      :image => "Image",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Description/)
  end
end
