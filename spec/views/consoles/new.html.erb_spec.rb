require 'rails_helper'

RSpec.describe "consoles/new", type: :view do
  before(:each) do
    assign(:console, Console.new(
      :name => "MyString"
    ))
  end

  it "renders new console form" do
    render

    assert_select "form[action=?][method=?]", consoles_path, "post" do

      assert_select "input#console_name[name=?]", "console[name]"
    end
  end
end
