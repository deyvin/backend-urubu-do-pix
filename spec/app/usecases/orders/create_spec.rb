# frozen_string_literal: true

require 'spec_helper'
require './app/usecases/orders/create'
require './app/usecases/users/create'

RSpec.describe Orders::Create do
  context 'with new order' do
    let(:user) do
      Users::Create.new(params: { name: 'John' }).call
    end

    let(:create_order) do
      described_class.new(params: { value: 200 }).with_user(user.id)
    end

    it { expect(create_order.call.class).to be(OrderRepository) }
    it { expect(create_order.call.user_id).to be(user.id) }
  end
end
