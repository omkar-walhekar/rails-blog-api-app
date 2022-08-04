Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :blogs 
      
      get '/blogs/:id/comments', to: 'blogs#get_comments'
      get '/blogs/:id/likes', to: 'blogs#get_likes'
    end
  end
end
