class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :email
      t.string :gender
      t.string :zipcode
      t.string :country
      t.string :citizenship
      t.string :country
      t.integer :income
      t.string :native_language
      t.string :english_fluency
      t.string :current_job
      t.string :remote_work
      t.string :referral
      t.string :facebook
      t.string :linkedin
      t.string :instagram
      t.string :twitter
      t.string :website

      t.timestamps
    end
  end
end
