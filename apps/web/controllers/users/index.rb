module Web::Controllers::Users
  class Index
    include Web::Action

    expose :users

    def call(params)
      @users = UserRepository.all
    end
  end
end
