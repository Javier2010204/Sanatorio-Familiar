# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  number     :integer
#  date       :date
#  price      :decimal(8, 2)
#  quantity   :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
