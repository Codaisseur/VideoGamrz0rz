require 'rails_helper'

RSpec.describe "consoles/index", type: :view do
  before(:each) do
    assign(:consoles, [
      Console.create!(
        :name => "Name"
      ),
      Console.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of consoles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
