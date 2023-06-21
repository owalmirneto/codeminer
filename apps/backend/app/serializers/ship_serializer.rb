# frozen_string_literal: true

class ShipSerializer < ApplicationSerializer
  attributes :id, :fuel_level, :fuel_capacity, :weight_capacity
end
