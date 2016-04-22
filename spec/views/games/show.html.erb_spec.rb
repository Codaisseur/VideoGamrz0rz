require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "Name",
      :rating => "9.99",
      :picture => "Picture",
      :console => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(//)
  end
end
