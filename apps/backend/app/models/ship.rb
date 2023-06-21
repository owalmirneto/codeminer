# frozen_string_literal: true

class Ship < ApplicationRecord
  belongs_to :pilot

  validates :fuel_level, numericality: { only_integer: true, greater_than: 0 }
  validates :fuel_capacity, numericality: { only_integer: true, greater_than: 0 }
  validates :weight_capacity, numericality: { only_integer: true, greater_than: 0 }
end
