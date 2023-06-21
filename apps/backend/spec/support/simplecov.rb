# frozen_string_literal: true

require "simplecov-cobertura"

SimpleCov.start "rails" do
  add_filter "app/controllers/application_controller.rb"
  add_filter "app/models/application_record.rb"
end
