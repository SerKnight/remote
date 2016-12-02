class VisitorsController < ApplicationController

	def index

	end

	def apply
		@applicant = Applicant.new
	end
	
end
