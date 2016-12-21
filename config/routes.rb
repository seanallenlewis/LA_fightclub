Rails.application.routes.draw do
  root 'fighters#index'

  resources :fighters

  delete '/logout' => 'sessions#destroy', as: :logout
  
  resources :sessions, only: [:new, :create]

end
