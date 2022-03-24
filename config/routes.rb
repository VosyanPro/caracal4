Rails.application.routes.draw do

    resources :reports, only: [:show], format: 'docx'
 
post '/orders', to: 'orders#create'
delete '/orders/:id', to: 'orders#destroy'

get '/orders', to: 'orders#index'

get '/orders/:id', to: 'orders#show'

end
