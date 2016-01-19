gem 'pry'
class ContactForm < ApplicationMailer
	default :from => 'web@pushcompany.es'

	def send_contact_form(info)
		@info = info
		
		mail(:to => 'chguerra@gmail.com',
			:subject => 'Nueva solicitud de contacto')

	end
end
