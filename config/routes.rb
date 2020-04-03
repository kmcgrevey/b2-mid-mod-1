Rails.application.routes.draw do

 get '/mechanics', to: 'mechanics#index'

 get '/amuse_parks/:id', to: 'amuse_parks#show'

end
