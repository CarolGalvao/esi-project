module Lessons
    class List
        include BaseService

        def initialize(params = {})
        end

        def call
            list
        end

        private

        def list
            Lesson.all
        end
     end
end