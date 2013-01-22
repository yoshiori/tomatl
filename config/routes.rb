# -*- coding: utf-8 -*-
Pomodoro::Application.routes.draw do

  root :to => 'root#index'

  # OmniAuth用
  match "/auth/:provider/callback" => "sessions#callback"
  match "/logout" => "sessions#destroy", :as => :logout

  resources :tasks do
    post :finish, :on => :member
  end
end
