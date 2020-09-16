# frozen_string_literal: true

Rails.application.routes.draw do
  root 'management#index'
  resources :management, only: :index do
    collection do
      resources :store, only: %i[edit update]
    end
  end
end
