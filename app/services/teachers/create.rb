module Teachers
  class Create
    include BaseService

    def initialize(params = {})
      @name = params.fetch(:name)
    end

    def call
      create
    end

    private

    def create
      Teacher.create(teacher_params)
    end

    def teacher_params
      {
        name: @name
      }
    end
  end
end