# frozen_string_literal: true

class CreateShipsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :ships, id: :uuid do |t|
      t.belongs_to :pilot, null: false, foreign_key: true, type: :uuid
      t.integer :fuel_level, null: false, default: 0
      t.integer :fuel_capacity, null: false, default: 0
      t.integer :weight_capacity, null: false, default: 0

      t.timestamps
    end
  end
end
