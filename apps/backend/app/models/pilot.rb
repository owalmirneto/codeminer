# frozen_string_literal: true

class Pilot < ApplicationRecord
  validates :certification, presence: true, luhn: true
  validates :name, presence: true
  validates :age, presence: true
  validates :credits, presence: true
end
