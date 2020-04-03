Rails.application.routes.draw do

 get '/mechanics', to: 'mechanics#index'
 get '/mechanics/:id', to: 'mechanics#show'

 get '/amuse_parks/:id', to: 'amuse_parks#show'

  patch '/mechanic_rides/:mech_id', to: 'mechanics#update'

end
