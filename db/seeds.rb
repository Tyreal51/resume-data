require 'faker'

Student.delete_all
Education.delete_all
Experience.delete_all
Capstone.delete_all
Skill.delete_all

20.times do 
  Student.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number,
  short_bio: "This is a bio",
  linkedin_url: Faker::Internet.url,
  twitter_url: Faker::Internet.url,
  blog_url: Faker::Internet.url,
  resume_url: Faker::Internet.url,
  github_url: Faker::Internet.url,
  photo: "This is a photo"
  )
end


20.times do 
    Education.create!(
      student_id: rand(1..20),
      start_date:Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
      end_date:Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
      degree:Faker::Superhero.name,
      university_name:Faker::University.name,
      details:Faker::Coffee.notes
    )
end 
20.times do
  Experience.create!(
    student_id: rand(1..20),
    start_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
    end_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
    job_title: Faker::Job.title,
    company_name: Faker::Company.name,
    details: Faker::Job.position
  )
end
  
20.times do 
  Capstone.create!(
  student_id: rand(1..20),
  name: Faker::Name.name,
  description: Faker::Lorem.paragraph,
  url: Faker::Internet.domain_name
  )
end

20.times do 
  Skill.create!(
  student_id: rand(1..20),
  name: Faker::Coffee.variety
  )
end
