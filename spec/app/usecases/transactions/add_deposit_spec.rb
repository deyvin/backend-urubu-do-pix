# frozen_string_literal: true

require 'spec_helper'
require './app/usecases/transactions/add_deposit'
require './app/usecases/users/create'
require './app/usecases/orders/create'

RSpec.describe Transactions::AddDeposit do
  context 'with new deposit' do
    let(:user) do
      Users::Create.new(params: { name: 'John' }).call
    end

    let(:order) do
      Orders::Create.new(params: { value: 200, user_id: user.id }).call
    end

    let(:transaction) do
      described_class.new(params: { value: 200, type: 'deposit', order_id: order.id })
    end

    it { expect(transaction.call.class).to be(TransactionRepository) }
  end
end
