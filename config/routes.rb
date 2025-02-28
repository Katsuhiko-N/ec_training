Rails.application.routes.draw do
  namespace :admin do
    resources :items
  end
  
  scope module: :public do
    resources :items, only:[:index, :show]
  end
  
  
  devise_for :admin, only:[:sessions], controllers:{
    sessions: "admin/sessions"
  }
  
  devise_for :user, only:[:registrations, :sessions], controllers:{
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'homes#top'
  # homes(管理者・ユーザー共通コントローラ)
  get 'homes/test_prof' => 'homes#test_prof', as: "test"
  get 'homes/test_admin' => 'homes#test_admin', as: "test_ad"
end
