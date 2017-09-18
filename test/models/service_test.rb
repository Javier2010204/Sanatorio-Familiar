# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  price       :decimal(8, 2)
#  category_id :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
