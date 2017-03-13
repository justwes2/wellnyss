Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, :controllers =>{
    registrations: 'users/registrations'  # AM: +1 overriding Devise's registrations controller
  }

  resources :users do
    resources :assessments
    resources :memories
    resources :goals
  end
  get'/crisis', to: 'welcome#crisis', as: :crisis

  root to: 'welcome#index'
end
