# frozen_string_literal: true

class Transaction
  attr_accessor :transaction_type, :value, :order_id

  def initialize(transaction_type:, value:, order_id:)
    @transaction_type = transaction_type
    @value = value
    @order_id = order_id
  end

  def to_hash
    {
      transaction_type: @transaction_type,
      value: @value,
      order_id: @order_id
    }
  end
end
