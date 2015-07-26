module Web::Controllers::Users
  class Create
    include Web::Action

    expose :user

    def call(params)
      @user = UserRepository.create(User.new(params[:user]))
      redirect_to routes.users_path
    end
  end
end
