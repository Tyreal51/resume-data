class StudentsController < ApplicationController


  def index
    students = Student.all
    render json: students
  end

  def show
    the_id= params[:the_id]
    student = Student.find_by(id: the_id)
    render json: student.as_json
  end

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_url: params[:twitter_url],
      blog_url: params[:blog_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo]
      )
    render json: student.as_json
  end

  def update
    student = Student.find(params[:id])
    student.first_name = params[:first_name],
    student.last_name = params[:last_name],
    student.email = params[:email],
    student.phone_number = params[:phone_number],
    student.short_bio = params[:short_bio],
    student.linkedin_url = params[:linkedin_url],
    student.twitter_url = params[:twitter_url],
    student.blog_url = params[:blog_url],
    student.resume_url = params[:resume_url],
    student.github_url = params[:github_url],
    student.photo = params[:photo]

    render json: student.as_json
  end

  def destroy
    the_id = params[:id]
    student = Student.find_by(id: the_id)
    student.destroy
  end


end
