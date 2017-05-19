Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root :to => 'home#index'
  post '/book_service' => 'services#book_service'
  get 'services/get_rate_per_hour/:id' => 'services#get_rate_per_hour'
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
