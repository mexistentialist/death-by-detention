Rails.application.routes.draw do

  root to: 'detention_centers#index', as: :index

  get '/detention_center/:id' => 'detention_centers#show', as: :detention_center_show

  get '/about' => 'detention_centers#about', as: :about_page

end
