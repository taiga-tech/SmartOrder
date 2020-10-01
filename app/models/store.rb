# frozen_string_literal: true

class Store < ApplicationRecord
  geocoded_by :address
  # after_validation :geocode
end
