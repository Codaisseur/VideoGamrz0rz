require 'rails_helper'

RSpec.describe Console, type: :model do
  describe "relations" do
    it { is_expected.to have_many :games }
  end
end
