Rails.application.routes.draw do

  resources :integrations
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "data_feeds#home"
  root to: "data_feeds#query"
end
