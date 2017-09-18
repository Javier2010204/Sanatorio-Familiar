class NotificationMailer < ApplicationMailer
	def new_notification(notification)
	 	@notification = notification
	 	Patient.all.each do |patient|
	 		mail(to: patient.email, subject: "Notificacion de sanatorio familiar")
	 	end
	end
end
