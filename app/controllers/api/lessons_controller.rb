module Api
  class LessonsController < ApplicationController
    before_action :authenticate_teacher!, except: [:index]

    def index
      lessons = Lessons::List.call

      render json: lessons, status: :ok
    end

    def create
      lesson = Lessons::Create.call(create_params)

      render json: lesson, status: :ok
    end

    private

    def create_params
      params[:lesson].permit(:name, :description, :link).merge(teacher: current_teacher)
    end
  end
end
