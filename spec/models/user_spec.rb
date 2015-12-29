require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'scope' do
    before(:all) {
      @user = create :user
    }

    describe 'me' do
      let(:me) {
        User.me('abc123')
      }
      it {
        expect(me.id).to eq 1
      }
    end
  end
end
