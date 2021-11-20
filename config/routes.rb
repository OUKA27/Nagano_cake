Rails.application.routes.draw do

  devise_for :admin, controllers: {
    registrations: 'admin/registrations',
    sessions: 'admin/sessions',
    passwords: 'admin/passwords'
  }

  devise_for :customer, controllers: {
    registrations: 'customer/registrations',
    sessions: 'customer/sessions',
    passwords: 'customer/passwords'
  }

  get 'admin' => 'admin/homes#top'

  namespace :admin do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
