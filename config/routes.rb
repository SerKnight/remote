Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :applicants
    root to: "users#index"
  end
  root to: 'visitors#index'

  devise_for :users
  resources :applicants
  

  get '/apply' => 'visitors#apply'
  post '/submit-application' => 'applicants#create_applicant'
  get '/application-steps' => 'applicants#applicant_steps'

end
