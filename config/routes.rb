Ece2019::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :classmates

  root to: 'main#index'
  get '' => 'main#index'
  get '/home' => 'main#index'
  get '/courses' => 'courses#courses'
  post '/courses/detail' => 'courses#detail'
  post '/courses/detail_elective' => 'courses#detail_elective'
  post '/courses/load_electives' => 'courses#load_electives'
  post '/main/feedback_popup' => 'main#feedback_popup'
  post '/main/feedback_email' => 'main#feedback_email'
  get '/info' => 'main#info'
end
