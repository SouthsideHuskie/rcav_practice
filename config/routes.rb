Rails.application.routes.draw do
  get("/home", { :controller => "calculation", :action => "home" })
  get("/square_root/:number", { :controller => "calculation", :action => "square_root" })
  get("/pmt/:interest_rate/:number_of_payments/:present_value", { :controller => "calculation", :action => "pmt" })
end
