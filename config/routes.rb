Rails.application.routes.draw do
  get 'card/new'

  get 'card/show'

  root to: "products#index"
  devise_for :users
  resources :users do
    member do
      get "likes", "listings", "in_progress", "completed", "purchase", "purchased"
    end
  end
  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4'
      get 'step5' 
      get 'done' 
    end
  end
  resources :products, only: [:new, :create, :show] do
    member do
      post "purchase"
    end
  end
end
