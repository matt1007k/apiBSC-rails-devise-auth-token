Rails.application.routes.draw do
  
  #resources :values,  defaults: { format: "json" }
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: "json" } do
    namespace :admin do
      resources :visions, :missions, :values, except: [:new, :edit]  
    end


    
  end
end
