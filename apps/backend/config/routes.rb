# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  get "healthz", to: "healthz#index"
end
