Rails.application.routes.draw do
  get 'serials/:serial_id/:episode_id', to: 'episodes#show', as: :serial_episode

  resources :serials, only: :index  do
    resources :reviews, only: :create
  end

  resources :films, only: [:index, :show] do
    resources :reviews, only: :create
  end

  root 'movies#index'
end
