# frozen_string_literal: true

class ShipsController < ApplicationController
  def create
    interactor = Ships::Create.call(params: ship_params)

    if interactor.success?
      render json: interactor.ship, status: :ok
    else
      render json: { errors: interactor.ship.errors }, status: :unprocessable_entity
    end
  end

  private

  def ship_params
    params.require(:ship).permit(:pilot_id, :fuel_level, :fuel_capacity, :weight_capacity)
  end
end
