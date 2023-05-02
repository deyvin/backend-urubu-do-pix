# frozen_string_literal: true

require './app/usecases/orders/create'

class OrdersController
  def self.create(params)
    Orders::Create.new(params: params).call
  end
end
