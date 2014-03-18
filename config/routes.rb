Tineetees::Application.routes.draw do
  #root page with navbar, products, footer
  root "welcome#index"

  #navbar: for customers logged in, allow them to edit their account info
  get "/account/:id", to: "user#edit"

  #navbar: about page for website
  get "/about", to: "welcome#about"

  #navbar: sign in form
  get "/signin", to: "session#new"

  #navbar: contact submission form
  get "/contact", to: "welcome#contact"

  #individual product page
  get "/product/:id", to: "product#read"

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

  #Dashboard for admin. If user signing in is an admin, they are redirected to this page.
  get "/admin-dash", to: "user#admin"

  #a list of requests from Philippe to Yolanda of products to be manufactured. Possible actions depends on
  #whether Phillipe or Yolanda are logged in (resources below)
  get "/admin-dash/supply_request", to: "supply_request#index"

  #list of all products Phillipe has created. (resources to edit/destroy/create are below)
  get "/admin-dash/product", to: "product#index"

  #list of all orders made by customers
  get "/admin-dash/orders", to: "order#index"

  #used to sign in/out AND hold info about shopping cart
  resources :session, only: [:destroy, :create]

  resources :product, only: [:edit, :destroy, :create]
  resources :supply_request, only: [:create, :edit]
  resources :order, only: [:create]

  resources :charges
end
