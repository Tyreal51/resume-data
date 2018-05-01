


Education.create(start_date: "May 15, 2017", end_date: "May 1, 2018", degree:"MBA", university_name: "Fairleigh Dickinson University", details:"I consentrated in finance and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
Education.create(start_date: "May 1, 2017", end_date: "May 3, 2018", degree:"MBA", university_name: "Ocean County College", details:"I consentrated in accounting and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
Education.create(start_date: "May 3, 2017", end_date: "May 3, 2018", degree:"MBA", university_name: "Fairleigh Dickinson University", details:"I consentrated in accounting and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
Education.create(start_date: "May 2, 2017", end_date: "May 3, 2018", degree:"MBA", university_name: "Harvard", details:"I am awesome in accounting and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
Education.create(start_date: "May 2, 2017", end_date: "May 3, 2018", degree:"MBA", university_name: "Harvard", details:"I am awesome in accounting and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
Education.create(start_date: "May 2, 2017", end_date: "May 3, 2018", degree:"MBA", university_name: "Harvard", details:"I am awesome in accounting and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
Education.create(start_date: "May 2, 2017", end_date: "May 3, 2018", degree:"MBA", university_name: "Yale", details:"I am awesome in finance and have 2 summer internships behind my belt. Graduated with honors as Cum Laude")
20.times do
  experience.create!(
    start_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
    end_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
    job_title: Faker::Job.title
    company_name: Faker::Company.name
    job_title: Faker::Job.position
  )
end
