Golfstore::Application.routes.draw do
  devise_for :users

  get "home/index"

get "cart/index"
get "site/about"
get "site/contact"
resources :items
match '/cart' => 'cart#index'
match '/cart/:id' => 'cart#add'
match '/about' => 'site#about'
match '/contact' => 'site#contact'
match '/Admin' => 'user#admin_login'
match '/logout' => 'user#logout'
root :to => "home#index"

end
