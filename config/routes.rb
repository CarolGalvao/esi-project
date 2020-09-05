# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/root#index'
  namespace 'api' do
    resources :root
  end
end
