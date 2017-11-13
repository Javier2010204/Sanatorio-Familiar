# == Schema Information
#
# Table name: patients
#
#  id          :integer          not null, primary key
#  code        :string
#  first_name  :string
#  last_name   :string
#  birthday    :date
#  age         :integer
#  phone       :string
#  email       :string
#  dpi         :string
#  sex         :string
#  manager     :string
#  nit         :string
#  alergies    :string
#  annotations :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  room_id     :integer
#

class Patient < ApplicationRecord

	has_many :sales

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :birthday, presence: true
	validates :age, presence: true
	validates :sex, presence: true
end
