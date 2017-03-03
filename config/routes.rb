Rails.application.routes.draw do
  get "/emojis", to: 'emojis#index'
  # post "/emojis", to: 'emojis#create'
  # get "/emojis/:id", to: 'emojis#show'
  # patch "/emojis/:id", to: 'emojis#update'
  # delete "/emojis/:id", to: 'emojis#destroy'

  namespace :api do
    namespace :v2 do
      get "/emojis", to: 'emojis#index'
      post "/emojis", to: 'emojis#create'
      get "/emojis/:id", to: 'emojis#show'
      patch "/emojis/:id", to: 'emojis#update'
      delete "/emojis/:id", to: 'emojis#destroy'
    end 
  end
end
