# frozen_string_literal: true

require './app/model/order'
require './app/adapters/repositories/order_repository'

module Orders
  class Create
    def initialize(params:, order: Order, order_repository: OrderRepository)
      @params = params
      @order = order
      @order_repository = order_repository
      self
    end

    def with_user(user_id)
      @user_id = user_id
      self
    end

    def call
      order = @order.new(value: @params[:value], user_id: @user_id)
      @order_repository.create!(order.to_hash)
    end
  end
end
