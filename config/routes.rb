Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :paints do
    resources :bookings, only: [:new, :create, :edit, :destroy]
  end
   resources :bookings, only: [:index, :show]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get "booking_confirmation", to: "pages#confirmation"
