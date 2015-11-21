Ece2019::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :classmates

  root to: 'main#index'
  get '' => 'main#index'
  get '/home' => 'main#index'
  get '/courses' => 'courses#courses'
  post '/courses/detail' => 'courses#detail'
  get '/info' => 'main#info'
end
