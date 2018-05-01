class Student < ApplicationRecord
  has_many :skills, :educations, :experiences, :capstones
end
