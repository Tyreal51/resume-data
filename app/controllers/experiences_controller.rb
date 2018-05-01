class ExperiencesController < ApplicationController
  def index 
  experience = Experience.all
  render json: experience.as_json
end
def show
  id = params[:id]
  experience = Experience.find_by (id: id)
  render json: experience.as_json
end
def update
  id = params[:id]
  experience = Experience.find_by(id: id)
  experience.start_date = params[:start_date]
  experience.end_date = params[:end_date]
  experience.job_title = params[:job_title]
  experience.company_name = params[:company_name]
  experience.details = params[:details]
end
def destroy
  id = params[:id]
  experience = Experience.find_by(id: id)
  experience.destroy
  render json: {message: "Expereince Profile #{id}"}
end
def create
  experience = Experience.new(
     start_date: params[:start_date],
     end_date: params[:end_date],
     job_title: params[:job_title],
     company_name: params[:company_name],
     details: params[:details]
)
  if experience.save
    render json: experience.as_json
  else
    render json: {errors: experience.errors.full_messages}, status: :unprocessible_entity
  end 
  
end
end
