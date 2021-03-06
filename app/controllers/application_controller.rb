class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def create
    @application = Application.new(application_params)

    if @application.save!
      sign_in(user)
      redirect_to "/static_pages/thanks.html.erb"
    else
      flash.now[:errors] = @application.errors.full_messages
      redirect_to "/static_pages/apply.html.erb"
    end


  end

  private
  def application_params
    params.require(:application).permit(:first_name, :last_name, :email,
    :phone_number, :skype_handle, :session_date, :github_username,
    :linkedin_profile, :personal_website, :undergraduate, :graduate,
    :java_experience, :javascript_experience, :go_experience, :r_experience,
    :python_experience, :other_experience, :much_python_experience,
    :stats_history, :math_history, :algebra_history, :cs_history,
    :short_answer_1, :short_answer_2, :short_answer_3, :short_answer_4,
    :short_answer_5, :recruitment_1, :recruitment_2, :recruitment_3, :recruitment_4)
  end



end
