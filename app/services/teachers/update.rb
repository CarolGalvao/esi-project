module Teachers
  class Update
    include BaseService

    def initialize(params = {})
      @teacher = params.fetch(:teacher)
      @name = params.fetch(:name)
      @email = params.fetch(:email)
    end

    def call
      update
    end

    private

    def update
      @teacher.update(teacher_params)
    end

    def teacher_params
      {
        name: @name,
        email: @email
      }.compact
    end
  end
end
