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
  get'/crisis', to: 'welcome#crisis', as: :crisis

  root to: 'welcome#index'
end
