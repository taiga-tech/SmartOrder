Rails.application.routes.draw do
  root 'management#index'
  resources :management do
    collection do
      resources :store
    end
  end
end
