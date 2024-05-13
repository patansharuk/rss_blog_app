Rails.application.routes.draw do
  root "blogs#index", as: :blogs_url
  resources :blogs do
    get 'index', on: :collection, defaults: { format: 'rss' }
  end
end
