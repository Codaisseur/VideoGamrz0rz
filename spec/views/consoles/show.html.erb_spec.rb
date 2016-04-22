require 'rails_helper'

RSpec.describe "consoles/show", type: :view do
  before(:each) do
    @console = assign(:console, Console.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
