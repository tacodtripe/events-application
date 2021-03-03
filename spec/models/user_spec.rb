require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'attributes' do
    it 'has a email' do
      user = build(:user)
      expect(user).to respond_to(:email)
    end

    it 'has a username' do
      user = build(:user)
      expect(user).to respond_to(:username)
    end

    it 'has a password' do
      user = build(:user)
      expect(user).to respond_to(:password)
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe 'associations' do
    it 'has many events' do
      user = create(:user)
      create_list(:event, 3, user_id: user.id)
      expect(Event.count).to eq 3
      expect(user.events.count).to eq 3
    end
  end
end
