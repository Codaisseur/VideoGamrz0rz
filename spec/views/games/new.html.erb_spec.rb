require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :name => "MyString",
      :rating => "9.99",
      :picture => "MyString",
      :console => nil
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_rating[name=?]", "game[rating]"

      assert_select "input#game_picture[name=?]", "game[picture]"

      assert_select "input#game_console_id[name=?]", "game[console_id]"
    end
  end
end
