# frozen_string_literal: true

class LuhnValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank? || Luhn.valid?(value)

    record.errors.add(attribute, options[:message].presence || :invalid)
  end
end
