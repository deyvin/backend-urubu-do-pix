# frozen_string_literal: true

class Order
  attr_accessor :value, :user_id

  def initialize(value:, user_id:)
    @value = value
    @user_id = user_id
  end

  def to_hash
    {
      value: @value,
      user_id: @user_id
    }
  end
end
