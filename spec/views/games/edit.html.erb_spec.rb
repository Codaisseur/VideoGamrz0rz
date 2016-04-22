require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "MyString",
      :rating => "9.99",
      :picture => "MyString",
      :console => nil
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_rating[name=?]", "game[rating]"

      assert_select "input#game_picture[name=?]", "game[picture]"

      assert_select "input#game_console_id[name=?]", "game[console_id]"
    end
  end
end
