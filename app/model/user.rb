# frozen_string_literal: true

class User
  attr_accessor :name

  def initialize(name:)
    @name = name
  end
end
