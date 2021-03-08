Rails.application.routes.draw do
  root 'hello#home'
  get '/students', to: 'posts#students'
  get '/sute_chil_1', to: 'posts#sute_chil_1'
  get '/sute_chil_2', to: 'posts#sute_chil_2'
  get '/sute_chil_3', to: 'posts#sute_chil_3'
  get '/sute_chil_4', to: 'posts#sute_chil_4'
  get '/sute_chil_5', to: 'posts#sute_chil_5'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'hello#about'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :posts 

end
