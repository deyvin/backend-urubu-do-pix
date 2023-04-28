# frozen_string_literal: true

require 'spec_helper'
require './app/usecases/users/create'

RSpec.describe Users::Create do
  context 'with new user' do
    let(:create_user) { described_class.new(params: { name: 'John' }) }

    it { expect(create_user.call.class).to be(UserRepository) }
  end
end
