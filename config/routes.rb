Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users
  resources :users

  get '/sale_posts/new', to: 'sale_posts#new', as: 'new_sale_post'
  post '/sale_posts', to: 'sale_posts#create'

  get '/buy_posts/new', to: 'buy_posts#new', as: 'new_buy_post'
  post '/buy_posts', to: 'buy_posts#create'

  #still need to add routes for patching items when bought/sold (toggle)

  # patch '/purchase', to: 'users#purchase'

end
