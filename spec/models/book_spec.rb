# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book do
  describe 'validations' do
    # subject { build(:user) }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:release_date) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:author) }
  end
end
