Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations:'users/registrations'
  }
  root to: "users#index"

  resources :meals do
  	member do
  		post 'available'
  	end
  end
  resources :categories
  resources :orders
end
