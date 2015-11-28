Ece2019::Application.routes.draw do
  resources :classmates

  root to: 'main#index'
  get '' => 'main#index'
  get '/home' => 'main#index'
  get '/courses' => 'courses#courses'
  post '/courses/detail' => 'courses#detail'
  post '/courses/detail_elective' => 'courses#detail_elective'
  post '/courses/load_electives' => 'courses#load_electives'
  get '/info' => 'main#info'
end
