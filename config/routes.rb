Rails.application.routes.draw do
  root 'homes#index'
  devise_for :agencies, :skip => [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  authenticated :agency_user do
    root 'admin/homes#index', as: :agency_user
  end
end
