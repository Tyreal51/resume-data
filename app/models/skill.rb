class Skill < ApplicationRecord
  belongs_to :student
  # def as_json
  #   {
  #     name: name
  #   }
  # end
end
