Rails.application.routes.draw do
  resources :locations
  root 'welcome#index'
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end

  get 'forecasts/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
