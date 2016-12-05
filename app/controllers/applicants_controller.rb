class ApplicantsController < ApplicationController

  def create_applicant
    @applicant = Applicant.create(secure_params)
    session[:applicant_id] = @applicant.id

    if @applicant.save
      flash[:notice] = "Congratulations, your application has been received!"
      respond_to do |format|
        format.html { redirect_to('/application-steps') }
      end
    else
      flash[:error] = @applicant.errors.full_messages
      session[:applicant_params] = secure_params
      redirect_back(fallback_location: '/apply')
    end
  end


  def applicant_steps
    @applicant = Applicant.find(session[:applicant_id])
  end


  private

  def secure_params
    params.require(:applicant).permit(:first_name,:last_name,:dob, :email,:gender,:zipcode,:country,:citizenship,:travel_length,:income,:native_language,:english_fluency,:current_job,:remote_work,:referral,:facebook,:linkedin,:instagram,:twitter,:website)
  end
end
