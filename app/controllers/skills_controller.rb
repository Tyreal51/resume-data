class SkillsController < ApplicationController
  def create
   skill=Skill.new(
    name: params[:input_name]
    )
    if name.save
        render json: resume_datum.as_json
    else
      render json: {errors: name.errors.full_message}, status: :unprocessible_entity
    end
  end
  def update
    the_id = params[:id]
    skill = skill.find_by(id: the_id)
    skill.update(
      name: params[:input_name]
      )
    if skill.save
      render json: {errors: skill.errors.full_messages}
    else
      render json: {errors: skill.errors.full_messages}
    end   
  end
  def show
    the_id = params[:id]
    skill = skill.find_by(id:the_id)
    render json: the_id.as_json
  end
  def destroy
    skill = skill.find(params[:id])
    skill.destroy
    render json: {message: "Successfully destroyed skill ##{skill.id}"}
  end

end
