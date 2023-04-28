# frozen_string_literal: true

require './app/model/user'
require './app/adapters/repositories/user_repository'

module Users
  class Create
    def initialize(params:, user: User, user_repository: UserRepository)
      @params = params
      @user = user
      @user_repository = user_repository
    end

    def call
      user = @user.new(name: @params[:name])
      @user_repository.create!(name: user.name)
    end
  end
end
