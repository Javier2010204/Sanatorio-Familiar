# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notification < ApplicationRecord
	after_create :send_mail

	private
	def send_mail
		NotificationMailer.new_notification(self).deliver_now
	end
end
