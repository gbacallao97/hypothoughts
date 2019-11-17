Rails.application.routes.draw do
  root 'theories#index'
  resources :theories
end
