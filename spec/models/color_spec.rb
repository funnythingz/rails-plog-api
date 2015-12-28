require 'rails_helper'

RSpec.describe Color, type: :model do
  describe 'color' do
    let(:color) {
      @color = create :color
    }
    it {
      expect(color.name).to eq 'purple'
    }
    it {
      expect(color.code).to eq '#ea80fc'
    }
  end
end