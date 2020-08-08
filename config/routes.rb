Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :works, only: [:new, :edit, :update, :create]
  resources :projects, only: [:new, :edit, :update, :create]

  resources :sideprojects, only: [:new, :edit, :update, :create, :index]
  get '/sideprojects/:title', to: "sideprojects#show"

  # resources :worknotes, only: [:index]
  get '/blog/careers', to: 'careers#index'
  get '/blog/skillshares', to: 'skillshares#index'
  get '/blog/labs', to: 'labs#index'
  get '/blog/recommendations', to: 'books#index'


  get 'about' => 'works#index', :as => :about
  get 'resume' => 'resumes#index', :as => :resume
  # get 'allprojects' => 'projects#index', :as => :all_projects
  get 'graphicdesign' => 'graphic#index', :as => :graphicdesign
  # resources :projects, only:[:show], param: :title
  get '/projects/:title', to: "projects#show"
end
