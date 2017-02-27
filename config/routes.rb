Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, :controllers =>{
    registrations: 'users/registrations'
  }

  resources :users do
    resources :assessments
    resources :memories
    resources :goals
  end

  root to: 'welcome#index'
end
