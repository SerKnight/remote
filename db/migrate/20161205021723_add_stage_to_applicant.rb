class AddStageToApplicant < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :stage, :string
  end
end
