Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/registrations' => 'home#registrations', as: 'registrations'
  get '/academy' => 'home#academy', as: 'academy'
  resources :staffs
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
