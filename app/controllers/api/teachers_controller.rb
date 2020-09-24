module Api
  class TeachersController < ApplicationController
    def create
      teacher = Teachers::Create.call(create_params)

      render json: { data: teacher }, status: :ok
    end

    private

    def create_params
      params[:teacher].permit(:name)
    end
  end
end