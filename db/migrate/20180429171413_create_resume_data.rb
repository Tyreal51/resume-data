class CreateResumeData < ActiveRecord::Migration[5.1]
  def change
    create_table :resume_data do |t|
      t.string :name
      t.string :email
      t.text :education
      t.text :experience
      t.string :skills
      t.string :capstone_link
      t.string :capstone_description

      t.timestamps
    end
  end
end
