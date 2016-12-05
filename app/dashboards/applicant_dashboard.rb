require "administrate/base_dashboard"

class ApplicantDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    dob: Field::DateTime,
    email: Field::String,
    gender: Field::String,
    zipcode: Field::String,
    country: Field::String,
    citizenship: Field::String,
    country: Field::String,
    native_language: Field::String,
    english_fluency: Field::String,
    current_job: Field::String,
    remote_work: Field::String,
    income: Field::Number,
    referral: Field::String,
    facebook: Field::String,
    linkedin: Field::String,
    instagram: Field::String,
    twitter: Field::String,
    website: Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :first_name,
    :email,
    :income,
    :current_job,
    :dob,
    :country
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :first_name,
    :last_name,
    :dob,
    :email,
    :gender,
    :zipcode,
    :country,
    :citizenship,
    :country,
    :native_language,
    :english_fluency,
    :current_job,
    :remote_work,
    :income,
    :referral,
    :facebook,
    :linkedin,
    :instagram,
    :twitter,
    :website
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :first_name,
    :last_name,
    :dob,
    :email,
    :gender,
    :zipcode,
    :country,
    :citizenship,
    :country,
    :native_language,
    :english_fluency,
    :current_job,
    :remote_work,
    :income,
    :referral,
    :facebook,
    :linkedin,
    :instagram,
    :twitter,
    :website
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
