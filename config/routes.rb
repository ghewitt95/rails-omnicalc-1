Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "home"})

  get("/square/new", {controller: "pages", action: ""})

  get("/square/results", {controller: "pages", action: ""})

  get("/square_root/new", {controller: "pages", action: ""})

  get("/square_root/results", {controller: "pages", action: ""})

  get("/payment/new", {controller: "pages", action: ""})

  get ("/payment/results", {controller: "pages", action: ""})

  get("/random/new", {controller: "pages", action: ""})

  get("/random/results", {controller: "pages", action: ""})
  
end
