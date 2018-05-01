Rails.application.routes.draw do
  # get '/students' => 'students#index'
  # get '/students/:the_id' => 'students#show'
  # post '/students' => 'students#create'
  # patch '/students/:id' => 'students#update'
  # delete '/students/:id' => 'students#destroy'
  # resources :educations
  # resources :skills
  # resources :capstones
  # resources :experiences
  
    resources :students do
        resources :educations, :skills, :capstones, :experiences
    end
  
end
