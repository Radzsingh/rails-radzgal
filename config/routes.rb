Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users 
    resources :users do
      resources :albums do
        resources :images
      end
  end
  
  
  
end
