# frozen_string_literal: true

require './app/model/transaction'
require './app/adapters/repositories/transaction_repository'

module Transactions
  class AddDeposit
    def initialize(params:, transaction: Transaction,
                   transaction_repository: TransactionRepository)
      @params = params
      @transaction = transaction
      @transaction_repository = transaction_repository
    end

    def call
      transaction = @transaction.new(transaction_type: @params[:transaction_type],
        value: @params[:value], order_id: @params[:order_id])
      @transaction_repository.create!(transaction.to_hash)
    end
  end
end
