Rails.application.routes.draw do
  root 'home#feed'

  get 'show_post' => 'home#show'

  post 'create_post' => 'home#create_post'

  get 'upvote' => 'home#upvote'

  get 'downvote' => 'home#downvote'

  post 'create_comment' => 'home#create_comment'

  get 'delete_comment' => 'home#delete_comment'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
