Rails.application.routes.draw do
  get '/top' => 'root#top'
  resources :hons
  
end