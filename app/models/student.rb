class Student < ApplicationRecord
  has_many :skills 
  has_many :educations 
  has_many :experiences 
  has_many :capstones
  has_many :resume_data
end
