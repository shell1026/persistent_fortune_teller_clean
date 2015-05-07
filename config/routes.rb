Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  get("/random/:no_1/:no_2", { :controller => "fortunes", :action => "number_game" })
  get("/zodiacs/new", { :controller => "zodiacs", :action => "new_form" })
  get("/create_zodiac", { :controller => "zodiacs", :action => "create_row" })

  # VARIABLE ROUTES
  # =======================

  # get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  # get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
end
