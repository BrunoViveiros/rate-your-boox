# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author do
  describe 'validations' do
    # subject { build(:user) }

    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:books) }
  end
end
