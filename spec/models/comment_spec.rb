# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_at_most(120) }
  end
end
