Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :edit, :show, :update, :destroy] do
    resources :reviews, only: [ :new, :create ]
  end
end
