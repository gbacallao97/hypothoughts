Rails.application.routes.draw do
  devise_for :users
  root 'theories#index'
  resources :theories
end
