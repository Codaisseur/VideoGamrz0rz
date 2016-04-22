require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :name => "Name",
        :rating => "9.99",
        :picture => "Picture",
        :console => nil
      ),
      Game.create!(
        :name => "Name",
        :rating => "9.99",
        :picture => "Picture",
        :console => nil
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 4
  end
end
