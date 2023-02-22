Rails.application.routes.draw do
  root "timelines#index"
  get 'timelines', to: 'timelines#index'
  get '/timelines/new', to: 'timelines#new', as: 'new_timeline'
  get '/timelines/:id', to: 'timelines#destroy'
  post 'timelines', to: 'timelines#create'
  delete '/timelines/:id', to: 'timelines#destroy', as: 'timeline'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
