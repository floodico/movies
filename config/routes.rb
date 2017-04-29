Rails.application.routes.draw do
  get '/:serial_id', to: 'serials#show', as: :serial
  get '/:serial_id/:season_id', to: 'seasons#show', as: :serial_season
  get '/:serial_id/:season_id/:episode_id', to: 'episodes#show', as: :serial_season_episode

  post :leave_review, to: 'reviews#create', as: :leave_review

  root 'serials#index'
end
