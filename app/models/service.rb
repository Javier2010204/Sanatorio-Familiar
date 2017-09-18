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

class Service < ApplicationRecord
  belongs_to :category
end
