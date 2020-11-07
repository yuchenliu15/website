Rails.application.routes.draw do
  root 'landing#index'

  controller :admin do
    get 'admin' => :index
    post 'admin' => :create
  end
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
