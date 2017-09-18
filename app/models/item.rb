# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  code          :string
#  description   :text
#  brand_id      :integer
#  unit_id       :integer
#  category_id   :integer
#  stock         :integer
#  min_stock     :integer
#  sale_price    :decimal(8, 2)
#  unit_price    :decimal(8, 2)
#  cost_price    :decimal(8, 2)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name          :string
#  due_date      :date
#  begin_balance :decimal(8, 2)
#

class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :unit
  belongs_to :category
  has_many :purchases

end
