# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


500.times do 
	fname = Faker::Name.first_name
	lname = Faker::Name.last_name
	Applicant.create(
		first_name: fname,
		last_name: lname,
		dob: Faker::Date.between(50.year.ago, 18.year.ago),
		email: Faker::Internet.email(),
		gender: ['male','female'].sample,
		zipcode: Faker::Address.zip_code,
		country: language_list.sample,
		citizenship: language_list.sample,
		income: Faker::Number.between(35000, 105000).to_s,
		native_language: Faker::Internet,
		english_fluency: Faker::Internet,
		current_job: employment_field_list.sample,
		remote_work: Faker::Internet,
		referral: Faker::Internet,
		facebook: Faker::Internet,
		linkedin: Faker::Internet,
		instagram: Faker::Internet,
		twitter: Faker::Internet,
		)
end

Faker::Internet.email #=> "eliza@mann.net"

Faker::Internet.email('Nancy') #=> "nancy@terry.biz"

# Optional argument name=nil
Faker::Internet.free_email #=> "freddy@gmail.com"

Faker::Internet.free_email('Nancy') #=> "nancy@yahoo.com"

# Optional argument name=nil
Faker::Internet.safe_email #=> "christelle@example.org"

Faker::Internet.safe_email('Nancy') #=> "nancy@example.net"

# Optional arguments specifier=nil, separators=%w(. _)
Faker::Internet.user_name #=> "alexie"

Faker::Internet.user_name('Nancy') #=> "nancy"

Faker::Internet.user_name('Nancy Johnson', %w(. _ -)) #=> "johnson-nancy"

# Optional arguments: min_length=8, max_length=16
Faker::Internet.password #=> "vg5msvy1uerg7"

Faker::Internet.password(8) #=> "yfgjik0hgzdqs0"

Faker::Internet.password(10, 20) #=> "eoc9shwd1hwq4vbgfw"

Faker::Internet.password(10, 20, true) #=> "3k5qS15aNmG"

Faker::Internet.password(10, 20, true, true) #=> "*%NkOnJsH4"

Faker::Internet.domain_name #=> "effertz.info"
