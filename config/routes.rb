Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'} 
  resources :portfolios, except: [:show] do 
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'protfolio_show'
  get 'anguler', to: 'portfolios#anguler'


  get 'about-me' => 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :blogs do 
    member do 
      get :toggle_status 
    end
  end

  root to: 'pages#home'
end
