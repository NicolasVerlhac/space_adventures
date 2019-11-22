Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'profile', to: 'dashboards#profile'
  devise_for :users
  # devise_scope :user do
    # get 'sign_in', to: 'devise/sessions#new'
  resources :vehicules do
    resources :bookings
  end

  resources :bookings do
    member do
      get 'review_edit'
      patch 'review_update'
    end
  end
end
