# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many   :images
  has_one    :review
  has_many   :order_menus
  has_many   :orders, through: :order_menus
  belongs_to :timing
  belongs_to :category
end
