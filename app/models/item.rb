# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  code        :string
#  description :string
#  brand_id    :integer
#  unit_id     :integer
#  category_id :integer
#  min_stock   :integer
#  price       :decimal(8, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stock       :integer
#  cost_price  :decimal(8, 2)
#  unit_price  :decimal(8, 2)
#  due_date    :date
#

class Item < ApplicationRecord
	belongs_to :brand
	belongs_to :unit
	belongs_to :category

	validates :description, presence: true
	validates :stock, presence: true
	validates :min_stock, presence: true
	validates :price, presence: true
	validates :unit_id, presence: true
	validates :category_id, presence: true
	validates :unit_price, presence: true
	validates :cost_price, presence: true
	validates :due_date, presence: true

	def item_description
		self.description + ((self.brand != nil) ? ' ' + self.brand.name : '')
	end

	def brand_name
		if self.brand
			self.brand.name
		else
			' '
		end
	end
end
