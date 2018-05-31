Rails.application.routes.draw do
  root 'welcome#index'

  get '/hello' => 'welcome#hello'

  resources :songs
end
