class Application < ActiveRecord::Base

  #contact information
  validates :first_name, :last_name, :email,
  :phone_number, :session_date, :skype_handle, presence: true

  #essays
  validates :short_answer_1, :short_answer_2, :short_answer_3, :short_answer_4,
    :short_answer_5, :recruitment_1, :recruitment_2, :recruitment_3, :recruitment_4,
    presence: true

end
