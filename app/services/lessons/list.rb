module Lessons
  class List
    include BaseService

    def call
      list
    end

    private

    def list
      Lesson.includes(:teacher).all
    end
  end
end
