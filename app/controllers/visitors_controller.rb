class VisitorsController < ApplicationController

	def index

	end

	def apply
		if session[:applicant_id]
			@applicant = Applicant.find(session[:applicant_id])
		else
			@applicant = Applicant.new
		end
	end
	
end
