# frozen_string_literal: true

Rails.application.routes.draw do
  root 'management#index'
  resources :management, only: :index do
    collection do
      resources :menus
      resources :store, only: [:show, :edit, :update]
    end
  end
end
