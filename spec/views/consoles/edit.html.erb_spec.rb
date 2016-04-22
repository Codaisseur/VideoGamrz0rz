require 'rails_helper'

RSpec.describe "consoles/edit", type: :view do
  before(:each) do
    @console = assign(:console, Console.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit console form" do
    render

    assert_select "form[action=?][method=?]", console_path(@console), "post" do

      assert_select "input#console_name[name=?]", "console[name]"
    end
  end
end
