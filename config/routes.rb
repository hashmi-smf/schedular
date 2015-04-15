Rails.application.routes.draw do
  devise_for :users
  root 'events#index'

  resources :events, except: :show do
    get :delete
  end
end
