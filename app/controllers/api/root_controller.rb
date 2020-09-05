# frozen_string_literal: true

module Api
  class RootController < ApplicationController
    def index
      render json: {
        status: 'SUCCESS', message: 'Welcome', data: []
      }, status: :ok
    end
  end
end
