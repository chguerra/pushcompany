require 'pry'
class SiteController < ApplicationController
	def home
		
	end

	def sendmail
		array = []
		array.push(params[:email])
		array.push(params[:nombre])
		array.push(params[:empresa])
		array.push(params[:cargo])
		array.push(params[:sector])
		ContactForm.send_contact_form(array).deliver_now
		render 'home'
	end
end
