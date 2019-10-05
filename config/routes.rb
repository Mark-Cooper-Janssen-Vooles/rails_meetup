Rails.application.routes.draw do
  root to: 'groups#index'

  resources :groups do
    resources :events do
      resources :comments
    end
  end
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
