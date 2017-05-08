Rails.application.routes.draw do
  get '/:serial_id/:episode_id', to: 'episodes#show', as: :serial_episode

  #serial_episode_reviews POST /serials/:serial_id/reviews(.:format) || reviews#create #
  resources :serials, :only => [] do
    resources :reviews, only: :create
  end

  root 'serials#index'

end
