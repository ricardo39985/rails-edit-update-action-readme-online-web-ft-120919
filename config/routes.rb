Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  get '/articles/:id/edit', to: 'articles#edit', as: 'article_edit'
  get 'articles/:id', to: 'articles#show'
  patch 'articles/:id', to: 'articles#update'
end
