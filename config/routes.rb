Rails.application.routes.draw do
  root 'management#index'
  resources :management do
    collection do
      resources :menus
    end
  end
end
