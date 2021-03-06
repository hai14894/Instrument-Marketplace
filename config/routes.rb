Rails.application.routes.draw do
  devise_for :users
  get "/" , to: "pages#home" , as: "root"
  get "listings", to: "listings#index", as: "listings"
  get "listings/new", to: "listings#new", as: "new_listing"
  post "listings", to: "listings#create"
  get "listings/:id", to: "listings#show" ,as: "show"

end
