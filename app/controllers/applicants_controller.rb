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


  def pipeline
    data = Applicant.group(:stage).count
    pipeline = ['new','screened','qualified','confirmed']
    @data = {
      'new' => data['new'],
      'screened' => data['screened'],
      'qualified' => data['qualified'],
      'confirmed' => data['confirmed']
    }

    @jobs = Applicant.group(:current_job).count
    
    inc_1 = Applicant.where('income > ? AND income < ? ',0,45000)
    inc_2 = Applicant.where('income > ? AND income < ? ',45000,66000)
    inc_3 = Applicant.where('income > ? AND income < ? ',66000,75000)
    inc_4 = Applicant.where('income > ? AND income < ? ',75000,90000)
    inc_5 = Applicant.where('income > ? AND income < ? ',90000,200000)
    @income = {
    '$0 - $45,000' => inc_1.count,
    '$45,000 - $65,000' => inc_2.count,
    '$66,000 - $75,000' => inc_3.count,
    '$75,000 - $90,000' => inc_4.count,
    '$90,000 - $200,000' => inc_5.count
    } 

    respond_to do |format|
      format.html {render :layout => 'analytics'}
    end
  end




  private

  def secure_params
    params.require(:applicant).permit(:stage,:first_name,:last_name,:dob, :email,:gender,:zipcode,:country,:citizenship,:travel_length,:income,:native_language,:english_fluency,:current_job,:remote_work,:referral,:facebook,:linkedin,:instagram,:twitter,:website)
  end
end
