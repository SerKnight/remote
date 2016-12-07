
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call

Applicant.destroy_all
User.destroy_all

user = User.find_or_create_by!(email: 'admin@remoteyear.com') do |user|
	user.password = 'password'
	user.password_confirmation = 'password'
	user.admin!
end

puts 'CREATED ADMIN USER: ' << user.email

# salary_list = [44000,52000,61000,39000,77000,64000,88000,105000,95000,100000,79000,64000,58000,57500]

500.times do |i|
	fname = Faker::Name.first_name
	lname = Faker::Name.last_name
	cit = ApplicationHelper::LANGUAGES.sample
	# income = salary_list.sample
	if i< 350
		stage = "new"
	elsif i< 410
		stage = "screened"
	elsif i< 430
		stage = "qualified"
	else 
		stage = "confirmed"
	end
		
	puts "Creating.... #{fname} #{lname} from #{cit}"
	Applicant.create!(
		stage: stage,
		first_name: fname,
		last_name: lname,
		dob: Faker::Date.between(50.year.ago, 18.year.ago),
		email: Faker::Internet.email,
		gender: ['male','female'].sample,
		zipcode: Faker::Address.zip_code,
		country: Faker::Address.country,
		citizenship: cit,
		income: Faker::Number.between(35000, 105000).to_s,
		native_language: ApplicationHelper::LANGUAGES.sample,
		english_fluency: ApplicationHelper::LANGUAGES.sample,
		current_job: ApplicationHelper::EMPLOYMENT_FIELDS.sample,
		remote_work: ApplicationHelper::TRAVEL_LENGTHS.sample,
		referral: Faker::Internet.domain_name,
		facebook: Faker::Internet.domain_name,
		linkedin: Faker::Internet.domain_name,
		instagram: Faker::Internet.domain_name,
		twitter: Faker::Internet.domain_name
	)
end
