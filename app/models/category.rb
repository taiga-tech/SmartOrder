class Category < ApplicationRecord
  has_many :menus
  has_ancestry
end
