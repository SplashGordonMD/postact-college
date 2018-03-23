Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/schools' => 'schools#index'
 get '/schools/new' => 'schools#new'
 post '/schools' => 'schools#create'
 get '/schools/:id' => 'schools#show'
 get '/schools/:id/edit' => 'schools#edit'
 patch '/schools/:id' => 'schools#update'
 delete '/schools/:id' => 'schools#destroy'
end
