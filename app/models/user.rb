# frozen_string_literal: true

class User < ApplicationRecord
  has_one  :pay
  has_many :orders
end
