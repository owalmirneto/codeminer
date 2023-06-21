# frozen_string_literal: true

module Pilots
  class Create
    include Interactor

    def call
      context.pilot = Pilot.create(context.params)

      context.fail! unless context.pilot.persisted?
    end
  end
end
