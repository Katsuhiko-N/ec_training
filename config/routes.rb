Rails.application.routes.draw do
  devise_for :admins, controllers:{
    sessions: "admin/sessions"
  }
  
  devise_for :users, controllers:{
    registratons: "public/registrations",
    sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'homes#top'
  get 'homes/test_prof' => 'homes#test_prof', as: "test"
  
end
