require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:follower) }
    it { is_expected.to validate_presence_of(:followed) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:follower).class_name('User') }
    it { is_expected.to belong_to(:followed).class_name('User') }
  end
end