Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :applicants
    root to: "users#index"
  end
  root to: 'applicants#index'
  devise_for :users
  resources :users

  get '/apply' => 'visitors#apply'
  post '/submit-application' => 'applicant#create_applicant'
  get '/application-steps' => 'applicant#applicant_steps'

end
