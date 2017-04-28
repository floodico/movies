Rails.application.routes.draw do
  get '/:name', to: 'serials#show', as: :serial

  root 'serials#index'
end
