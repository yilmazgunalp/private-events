Rails.application.routes.draw do
 

 root 'users#login'

 post 'signin', to: 'users#signin'

 get 'logout', to:'application#logout'

 get 'invite', to: 'events#invite'

 get 'invited', to: 'events#invite_user'


resources :users, only: [:new,:show,:create, :index]
resources :events, only: [:show,:index, :new, :create]

end
