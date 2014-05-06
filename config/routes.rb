Naughtyfish::Application.routes.draw do
  resources :fish_bowls

  resources :adventure_lists

  resources :actions

  resources :categories

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end