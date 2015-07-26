get "/", :to => "home#index", :as => :root

get "/users", :to => "users#index", :as => :users
get "/users/new", :to => "users#new", :as => :new_user
post "/users", :to => "users#create", :as => :users
