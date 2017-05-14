Rails.application.routes.draw do
  get 'serials/:serial_id/:episode_id', to: 'episodes#show', as: :serial_episode

  #serial_episode_reviews POST /serials/:serial_id/reviews(.:format) || reviews#create #
  resources :serials, only: :index  do
    resources :reviews, only: :create
  end

  resources :films, only: [:index, :show]

  root 'movies#index'
end
