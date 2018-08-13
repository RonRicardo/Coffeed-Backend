Rails.application.routes.draw do

  get 'users/:user_id/pending_friends' => 'users#pending_friends'
  resources :users do
    resources :friends, only: [:index]
    get 'friends/destroy/:friend_id' => 'friends#destroy'
    ## friend requests ##
    get 'friend_requests/incoming' => 'friend_requests#incoming'
    get 'friend_requests/outgoing' => 'friend_requests#outgoing'
    get 'friend_requests/index/:friend_id/:id' => 'friend_request#show'
    patch 'friend_requests/index/:friend_id/:id' => 'friend_request#accept'
    delete 'friend_requests/index/:friend_id/:id' => 'friend_requests#destroy'


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
