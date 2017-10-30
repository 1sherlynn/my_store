Rails.application.routes.draw do
  
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', unlocks: 'users/unlocks', confirmations: 'users/confirmations', omniauth_callbacks: "users/omniauth_callbacks"} 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  root 'pages#index'

  get 'shop' => 'pages#shop' do
    collection do 
      get :autocomplete
    end
  end

  resources :products do
    collection do 
        get :autocomplete
    end
  end


  get 'about' => 'pages#about'
  
  

  resources :carts
  resources :product_items
  resources :orders
  resources :contacts, only: [:new, :create]


  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
