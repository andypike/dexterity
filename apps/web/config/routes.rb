get "/", :to => "home#index", :as => :root

get "/users", :to => "users#index", :as => :users
