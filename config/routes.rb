# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/lessons#index'


  namespace 'api' do
    resources :lessons, only: [:index, :create]
    resources :teachers, only: [:create]
  end
end
