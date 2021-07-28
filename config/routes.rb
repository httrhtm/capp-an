Rails.application.routes.draw do
  root 'login#index'
  get 'login/index'
  devise_for :users
end
