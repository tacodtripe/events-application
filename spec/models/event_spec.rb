require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'attributes' do 
    it 'has a title' do
      event = build(:event)
      expect(event).to respond_to(:title)
    end
  end
end
