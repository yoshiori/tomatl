# -*- coding: utf-8 -*-
Tomato::Application.routes.draw do

  root :to => 'root#index'

  # OmniAuth用
  match "/auth/:provider/callback" => "sessions#callback"
  match "/logout" => "sessions#destroy", :as => :logout

  resources :tasks do
    post :finish, :on => :member
    resources :pomodoros, :only => :create
  end
end
