require 'rails_helper'

RSpec.describe Color, type: :model do
  describe 'scope: avalable' do
    let(:colors) {
      create :color
      Color.available
    }
    it {
      expect(colors.first.name).to eq 'purple'
    }
    it {
      expect(colors.first.code).to eq '#ea80fc'
    }
  end
end