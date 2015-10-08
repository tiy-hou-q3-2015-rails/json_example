Rails.application.routes.draw do

  root 'contacts#index'
  get 'contacts/new' => 'contacts#new', as: :new_contact
  post "contacts" => 'contacts#create', as: :contacts
  get "contacts/:id" => 'contacts#show', as: :contact

  namespace :api do
    get "contacts" => 'contacts#index'
  end
end
