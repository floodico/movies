Rails.application.routes.draw do
  get '/:serial_id', to: 'serials#show', as: :serial
  get '/:serial_id/:season_id', to: 'seasons#show', as: :serial_season
  get '/:serial_id/:season_id/:episode_id', to: 'episodes#show', as: :serial_season_episode

  #serial_season_episode_reviews POST /serials/:serial_id/seasons/:season_id/episodes/:episode_id/reviews(.:format) || reviews#create #
  resources :serials, :only => [] do
    resources :seasons, :only => [] do
      resources :episodes, :only => [] do
        resources :reviews, only: :create
      end
    end
  end

  root 'serials#index'


end
