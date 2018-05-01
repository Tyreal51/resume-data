class ResumeDataController < ApplicationController
  def create
   resume_datum=ResuneDatum.new(
    name: params[:input_name],
    email: params[:input_email],
    education: params[:input_education],
    experience: params[:input_experience],
    skills: params[:input_skills],
    capstone_link: params[:input_capstone_link],
    capstone_description: params[:input_capstone_description]
    )
    if resume_datum.save
        render json: resume_datum.as_json
    else
      render json: {errors: resume_datum.errors.full_message}, status: :unprocessible_entity
    end
  end
  def update
    the_id: = params[:id]
    resume_datum = ResumeDatum.find_by(id: the_id)
    resume_datum.update(
      name: params[:input_name],
      email: params[:input_email],
      education: params[:input_education],
      experience: params[:input_experience],
      skills: params[:input_skills],
      capstone_link: params[:input_capstone_link],
      capstone_description: params[:input_capstone_description]
      )
    if resume_datum.save
      render json: {errors: resume_datum.errors.full_messages}
    else
      render json: {errors: resume_datum.errors.full_messages}
    end   
  end
  def show
    the_id = params[:id]
    resume_datum = ResumeDatum.find_by(id:the_id)
    render json: the_id.as_json
  end
  def destroy
    resume_datum = ResumeDatum.find(params[:id])
    resume_datum.destroy
    render json: {message: "Successfully destroyed resume data ##{resume_datum.id}"}
  end
end
