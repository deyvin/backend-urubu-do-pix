# frozen_string_literal: true

require 'spec_helper'
require './app/model/user'

RSpec.describe User do
  context 'with valid user' do
    let(:user) { described_class.new(name: 'John') }

    it { expect(user.name).to eq('John') }
  end
end
