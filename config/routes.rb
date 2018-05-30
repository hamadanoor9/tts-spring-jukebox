Rails.application.routes.draw do
  root 'welcome#index'

  get '/hello' => 'welcome#hello'

  get '/songs' => 'songs#index', as: :songs_list
  
  get '/songs/:id' => 'songs#show', as: :song
end
