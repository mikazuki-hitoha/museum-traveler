Rails.application.routes.draw do
  devise_for :users
  root 'museums#index'
  resources :museums do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
