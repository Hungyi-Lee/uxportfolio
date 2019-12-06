Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :works, only: [:new, :edit, :update, :create]
  resources :projects, only: [:new, :edit, :update, :create]
  get 'bio' => 'works#index', :as => :bio
  get 'resume' => 'resumes#index', :as => :resume
  get 'allprojects' => 'projects#index', :as => :all_projects

  # resources :projects, only:[:show], param: :title
  get '/projects/:title', to: "projects#show"
end
