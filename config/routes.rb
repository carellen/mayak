Rails.application.routes.draw do
  resources :stocks, only: :index

  namespace :stocks do
    resource :latest, only: :show
  end

  root to: 'stocks/latests#show'
end
