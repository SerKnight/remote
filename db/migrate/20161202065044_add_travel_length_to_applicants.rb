class AddTravelLengthToApplicants < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :travel_length, :string
  end
end
