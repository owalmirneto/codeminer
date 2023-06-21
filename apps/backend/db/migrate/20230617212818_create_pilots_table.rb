# frozen_string_literal: true

class CreatePilotsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :pilots, id: :uuid do |t|
      t.string :certification, null: false
      t.string :name, null: false
      t.integer :age, null: false
      t.integer :credits, null: false, default: 0
      t.string :location_planet

      t.timestamps
    end
  end
end
