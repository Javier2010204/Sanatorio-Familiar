# == Schema Information
#
# Table name: sales
#
#  id         :integer          not null, primary key
#  number     :integer
#  date       :date
#  patient_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sale < ApplicationRecord
  belongs_to :patient
  has_many :sale_details

  def total
		details = self.sale_details

		total = 0.0
		details.flat_map do |d|
			total += d.qty * d.subtotal
		end
		total
end
end
