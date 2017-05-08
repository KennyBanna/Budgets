Rails.application.routes.draw do

  root to: 'static_pages#home'
  get 'about', to: 'static_pages#about'
  
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  
  resources :users, only: [:show] do
    resources :budgets
  end
  
  resources :expenses, only: [:create, :destroy]
  
end
