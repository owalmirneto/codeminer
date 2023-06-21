# frozen_string_literal: true

module Ships
  class Create
    include Interactor

    def call
      context.ship = Ship.create(context.params)

      context.fail! unless context.ship.persisted?
    end
  end
end
