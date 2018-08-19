Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]


  post 'auth/request', to:'authorization#get_authorization'
  get 'users/:user_id/pending_friends' => 'users#pending_friends'
  get 'users/:user_id/friendships' => 'users#friendships'
  patch 'users/:user_id/friendships/:friendship_id' => 'users#friendships_update'
  resources :users do
    resources :friends, only: [:index]
    get 'friends/destroy/:friend_id' => 'friends#destroy'
    ## friend requests ##
    # get 'friend_requests/incoming' => 'friend_requests#incoming'
    # get 'friend_requests/outgoing' => 'friend_requests#outgoing'
    get 'friend_requests/:friend_id' => 'friend_requests#show'
    patch 'friend_requests/:friend_id/' => 'friend_requests#update'
    delete 'friend_requests/:friend_id/' => 'friend_requests#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
