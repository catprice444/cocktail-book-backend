Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :alcohols
      resources :cocktails
    
    end
  end

end


