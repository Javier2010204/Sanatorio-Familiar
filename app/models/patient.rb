# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  code       :string
#  name       :string
#  last_name  :string
#  birthdate  :date
#  phone      :string
#  allergies  :text
#  manager    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sex        :integer
#  status     :string
#  email      :string
#  dpi        :string
#  nit        :string
#

class Patient < ApplicationRecord
	include AASM
	after_create :set_patient_code
	has_many :sales

	def set_patient_code
		self.update(code: self.sex.to_s + "00" + self.id.to_s + "17")
		#Date.current.year 		
	end

	scope :activos, ->{ where(status: "active") }
	scope :ultimos,->{ order("created_at DESC") }

	aasm column: "status" do
		state :active, initial: true
		state :inactive

		event :activated do
			transitions from: :inactive, to: :active
		end

		event :deactivated do 
			transitions from: :active, to: :inactive
		end
	end

end
