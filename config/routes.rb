Rails.application.routes.draw do
  get("/",               { :controller => "calculations", :action => "instructions" })

  get("/square/:number", { :controller => "calculations", :action => "square_number" })

  get("/square_root/:number", { :controller => "calculations", :action => "squareroot" })

  get("/payment/:interest_rate/:number_of_payments/:principal_value", { :controller => "calculations", :action => "pmt" })
end

