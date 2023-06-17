# frozen_string_literal: true

class HealthzController < ApplicationController
  def index
    render json: { message: "Application is ok" }, status: :ok
  end
end
