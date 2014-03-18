Tineetees::Application.routes.draw do
  #root page with navbar, products, footer
  root "welcome#index"

  #navbar: for customers logged in, allow them to edit their account info
  #get "/account/:id", to: "users#edit" #PJ: removing this, as it should, in REST, be below...

  #navbar: about page for website
  get "/about", to: "welcome#about"

  #navbar: sign in form
  get "/signin", to: "session#new"

  #navbar: contact submission form
  get "/contact", to: "welcome#contact"

  #shopping cart for hipsters. the items in the basket are saved from session data
  #this function is still a little fuzzy because you need to be able to have the
  #items persistant after logging out
  #ask PJ
  get "/basket", to: "order#new"

  #checkout page after reviewing shopping cart where users who don't have accounts
  #can input their account info
  #and optionally create an account.
  #we may need to integrate with stripe
  #sends request to create an order after submitting (resource below)
  get "/checkout", to: "order#checkout"

  #info about completed order after it is created
  get "/confirmation", to: "order#read"

  resources :charges
  resources :shipments

  # Dashboard for admin.
  namespace :admin_dash do
    get "/", to: "users#admin" #if user signing in is an admin, they are redirected to this page.

    # A list of requests from Admin to Supplier of products to be manufactured.
    # Possible actions depends on whether Admin or Supplier are logged in...
    get "/supply_requests", to: "supply_requests#index"

    get "/products", to: "products#index"
    get "/orders", to: "order#index"
  end

  #supplier landing page
  get "/supplier", to: "users#supplier"

  #used to sign in/out AND hold info about shopping cart
  resources :session,         only: [:destroy, :create]

  resources :products,        only: [:show, :edit, :destroy, :create]

  resources :supply_requests, only: [:create, :edit]
  resources :orders,          only: [:create]
  resources :users,           only: [:show, :edit]

end
