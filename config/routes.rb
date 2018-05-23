Rails.application.routes.draw do
  root 'root#top'
  resources :hons, only: [:create, :index, :show, :edit, :update, :destroy]
  
end
