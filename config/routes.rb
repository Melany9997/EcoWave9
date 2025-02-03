Rails.application.routes.draw do
  devise_for :users

  root to: "pages#landing_page"
  get "/home", to: "pages#home"
  # get "/sign_in", to: "sessions#new"
  # get "/sign_up", to: "users#new"
  # delete "/sign_out", to: "sessions#destroy"

  resources :projects do
    resources :project_materials, only: [:new, :create, :show,]
    resources :materials, controller: 'project_materials', only: [:destroy]
  end

  resources :materials do
    get :process_ai, on: :member
    member do
      get :edit_quantity
      patch :update_quantity
    end
  end
end
