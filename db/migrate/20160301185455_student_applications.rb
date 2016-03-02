class StudentApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :skype_handle, null: false

      t.date :session_date, null: false

      t.string :github_username, null: false
      t.string :linkedin_profile, null: false
      t.string :personal_website, null: false

      t.string :undergraduate
      t.string :graduate

      t.boolean :java_experience
      t.boolean :javascript_experience
      t.boolean :go_experience
      t.boolean :r_experience
      t.boolean :python_experience
      t.boolean :other_experience

      t.string :much_python_experience, null: false

      t.boolean :stats_history
      t.boolean :math_history
      t.boolean :algebra_history
      t.boolean :cs_history

      t.text :short_answer_1
      t.text :short_answer_2
      t.text :short_answer_3
      t.text :short_answer_4
      t.text :short_answer_5

      t.text :recruitment_1
      t.text :recruitment_2
      t.text :recruitment_3
      t.text :recruitment_4

      t.timestamps null: false
    end



  end
end
