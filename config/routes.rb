Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      get 'resources', to: 'resources#all', as: 'resources'
    end
  end
end
