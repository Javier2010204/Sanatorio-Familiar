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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
