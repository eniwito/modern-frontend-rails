Rails.application.routes.draw do
  namespace :cp do
    root 'dashboard#index'
  end
  as :admin do
    get 'admins/edit' => 'admin/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'admin/registrations#update', :as => 'admin_registration'
  end
  devise_for :users
  devise_for :admins, controllers: { sessions: "admin/sessions" }, skip: [:registrations]
  root to: 'public/main#index'
end
