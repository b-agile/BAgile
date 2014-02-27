BAgile::Application.routes.draw do

  resources :projects do
    resources :sprints do
      resources :tasks,only: [:index]
      member do
        get 'scrumboard'
      end
    end
    resources :tasks,only: [:index]
  end

  resources :tasks,  only: [:new, :create,:show, :edit, :update, :destroy]



  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end