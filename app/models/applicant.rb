class Applicant < ApplicationRecord
	validates_presence_of :first_name, :last_name, :dob, :email, :gender, :zipcode, :country, :citizenship, :country, :native_language, :english_fluency, :current_job, :remote_work
# :income
# :referral
# :facebook
# :linkedin
# :instagram
# :twitter
# :website



end
# "first_name", "last_name", "dob", "email", "zipcode", "income", "referral", "facebook", "linkedin", "instagram", "twitter", "website"