Rails.application.routes.draw do

  root to: "static_pages#root"

  get 'static_pages/apply'
  get 'static_pages/curriculum'
  get 'static_pages/about'
  get 'static_pages/thanks'

  resource :application, only: [:create]


end
