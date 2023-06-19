# frozen_string_literal: true

class PilotsController < ApplicationController
  def create
    interactor = Pilots::Create.call(params: pilot_params)

    if interactor.success?
      render json: interactor.pilot, status: :ok
    else
      render json: { errors: interactor.pilot.errors }, status: :unprocessable_entity
    end
  end

  private

  def pilot_params
    params.require(:pilot).permit(:certification, :name, :age, :credits, :location_planet)
  end
end
