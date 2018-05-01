class CapstonesController < ApplicationController
  def create
   capstone=Capstone.new(
    name: params[:input_name],
    description: params[:input_description],
    url: params[:input_url]
    )
    if name.save
        render json: capstone.as_json
    else
      render json: {errors: capstone.errors.full_message}, status: :unprocessible_entity
    end
  end
  def update
    the_id = params[:id]
    capstone = capstone.find_by(id: the_id)
    capstone.update(
      name: params[:input_name],
      description: params[:input_description],
      url: params[:input_url]
      )
    if capstone.save
      render json: {errors: capstone.errors.full_messages}
    else
      render json: {errors: capstone.errors.full_messages}
    end   
  end
  def show
    the_id = params[:id]
    capstone = capstone.find_by(id:the_id)
    render json: the_id.as_json
  end
  def destroy
    capstone = capstone.find(params[:id])
    capstone.destroy
    render json: {message: "Successfully destroyed capstone ##{capstone.id}"}
  end
end
