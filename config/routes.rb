Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      # resources
      get 'resources', to: 'resources#all', as: 'resources'

      # users
      get 'users/me', to: 'users#me', as: 'users_me'
      post 'users/new', to: 'users#new', as: 'users_new'
    end
  end
end
