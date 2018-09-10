class CreateDataFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :data_feeds do |t|
      t.string :etd_record_key
      t.string :public_person_ID
      t.string :directory_first_name
      t.string :directory_middle_name
      t.string :directory_last_name
      t.string :email
      t.string :home_address_1
      t.string :home_address_2
      t.string :home_address_3
      t.string :home_address_city
      t.string :home_address_state
      t.string :home_address_postal_code
      t.string :home_address_country_code
      t.string :home_address_country_descr
      t.string :ferpa_suppression_flag
      t.string :acad_career_code
      t.string :acad_career_descr
      t.string :acad_program_code
      t.string :acad_program_descr
      t.string :primary_acad_plan_code
      t.string :primary_acad_plan_descr
      t.string :primary_acad_plan_dept_code
      t.string :primary_acad_plan_dept_descr
      t.string :secondary_acad_plan_code
      t.string :secondary_acad_plan_descr
      t.string :secondary_acad_plan_dept_code
      t.string :secondary_acad_plan_dept_descr
      t.string :program_status_descr
      t.string :degree_code
      t.string :degree_status_descr
      t.date :degree_status_date

      t.timestamps
    end
  end
end
