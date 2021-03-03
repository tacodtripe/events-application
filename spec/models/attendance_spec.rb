require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'attributes' do
    it 'has a attendee_id' do
      attendance = build(:attendance)
      expect(attendance).to respond_to(:attendee_id)
    end

    it 'has a event_to_attend_id' do
      attendance = build(:attendance)
      expect(attendance).to respond_to(:event_to_attend_id)
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:attendee_id) }
    it { is_expected.to validate_presence_of(:event_to_attend_id) }
  end
end
