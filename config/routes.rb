Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    resources :events
    resources :runs

    resources :users
    resources :user_events
    post 'user_token' => 'user_token#create'
    post 'find_user' => 'users#find'
    get 'get_events' => 'events#create'
  end

end
