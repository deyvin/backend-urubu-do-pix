require 'spec_helper'
require './app/model/user'

RSpec.describe User do
  context 'with valid user' do
    let(:user) { User.new(name: 'John') }

    it { expect(user.name).to eq('John') }
  end
end
