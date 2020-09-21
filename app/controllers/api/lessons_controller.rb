module Api
  class LessonsController < ApplicationController
    def index
      lessons = Lessons::List.call

      render json: { data: lessons }, status: :ok
    end

    def create
      lesson = Lessons::Create.call(create_params)

      render json: { data: lesson }, status: :ok
    end

    private

    def create_params
      params[:lesson].permit(:name, :description, :link)
    end
  end
end
