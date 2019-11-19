Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  # devise_scope :user do
    # get 'sign_in', to: 'devise/sessions#new'
  resources :vehicules
  # end
end
