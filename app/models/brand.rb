# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contact    :string
#  phone      :string
#  email      :string
#  address    :string
#

class Brand < ApplicationRecord
	validates :name, presence: true
	validates :contact, presence: true
end
