Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end

  # get 'cocktails', to: 'cocktails#index'
  # get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  # get '/cocktails/new', to: 'cocktails#new'
  # "post '/cocktails', to: 'cocktails#create'"
  # "get '/cocktails/:id/edit', to: 'cocktails#edit'"
  # "patch '/cocktails/:id', to: 'cocktails#update'"
  # "delete '/cocktails/:id', to: 'cocktails#destroy'"
end
