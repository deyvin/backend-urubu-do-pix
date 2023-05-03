# frozen_string_literal: true

require './app/usecases/orders/create'

class OrdersController
  def initialize(user_id)
    @user_id = user_id
  end

  def create(params)
    Orders::Create.new(params: params).with_user(@user_id).call
  end
end
