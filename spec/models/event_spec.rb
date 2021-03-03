require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'attributes' do
    it 'has a title' do
      event = build(:event)
      expect(event).to respond_to(:title)
    end

    it 'has a start' do
      event = build(:event)
      expect(event).to respond_to(:start)
    end

    it 'has a user_id' do
      event = build(:event)
      expect(event).to respond_to(:user_id)
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:start) }
    it { is_expected.to validate_presence_of(:user_id) }
  end

  describe 'associations' do
    it 'belongs to a user' do
      event = create(:event)
      expect(event.user_id).to eq(User.last.id)
    end
  end
end
