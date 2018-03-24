Rails.application.routes.draw do

  resources :channels
  resources :discussions do
    resources :replies
  end
  
  root to: "discussions#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
