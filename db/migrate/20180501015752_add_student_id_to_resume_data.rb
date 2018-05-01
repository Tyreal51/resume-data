class AddStudentIdToResumeData < ActiveRecord::Migration[5.1]
  def change
    add_column :resume_data, :student_id, :integer
  end
end
