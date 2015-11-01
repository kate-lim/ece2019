Ece2019::Application.routes.draw do
  resources :classmates

  root to: 'main#index'
  get '' => 'main#index'
  get '/home' => 'main#index'
  get '/courses' => 'courses#courses'
  get '/info' => 'main#info'
end
