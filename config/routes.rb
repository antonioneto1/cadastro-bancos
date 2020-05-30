Rails.application.routes.draw do
  resources :bank_accounts
  resources :agencies

  root to: 'agencies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
