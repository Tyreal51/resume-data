class EducationController < ApplicationController
  def index
    education = Education.all
    render json: education
  end

  def show
    the_id = params[:the_id]
    education = Education.find_by(id: the_id)
    render json: education.as_json
  end

  def create
    education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
      )
    render json: education.as_json
  end

  def update
    education = Education.find(params[:id])
    education.start_date = params[:start_date],
    education.end_date = params[:end_date],
    education.degree = params[:degree],
    education.university_name = params[:university_name],
    education.details = params[:details]

    render json: education.as_json
  end

  def destroy
    the_id = params[:id]
    education = Education.find_by(id: the_id)
    education.destroy
  end
end
