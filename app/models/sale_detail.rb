# == Schema Information
#
# Table name: sale_details
#
#  id         :integer          not null, primary key
#  name_item  :string
#  qty        :integer
#  subtotal   :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sale_id    :integer
#

class SaleDetail < ApplicationRecord
	belongs_to :sale
end
