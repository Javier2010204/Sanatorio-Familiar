class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :unit
  belongs_to :category
end
