Rails.application.routes.draw do
  get '/:id', to: 'serials#show', as: :serial
  get '/:id/:id', to: 'seasons#show', as: :serial_season

  root 'serials#index'
end
