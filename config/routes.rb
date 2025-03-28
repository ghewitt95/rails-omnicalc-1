Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "home"})

  get("/square/new", {:controller => "pages", :action => "home"})
  
  get("/square/results", {:controller => "pages", :action => "square_results"})

  get("/square_root/new", {:controller => "pages", :action => "root_calc"})

  get("/square_root/results", {:controller => "pages", :action => "root_results"})

  get("/payment/new", {:controller => "pages", :action => "payment_calc"})

  get("/payment/results", {:controller => "pages", :action => "payment_results"})

  get("/random/new", {:controller => "pages", :action => "random_calc"})

  get("/random/results", {:controller => "pages", :action => "random_results"})

end
