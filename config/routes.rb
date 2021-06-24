Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cocktails
      resources :alcohols do
        resources :cocktails
      end 
      
    end
  end

end


