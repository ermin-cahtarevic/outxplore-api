Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :host_application, only: [:create]
  resources :listings, only: [:create]
  get :get_user, to: 'users#get_user'
  put :update_photo, to: 'users#update_photo'
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
end
