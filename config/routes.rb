Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "misc", :action => "director" })

  get("/directors/:the_id", { :controller => "misc", :action => "show" })

  get("/movies", { :controller => "movie", :action => "movie" })

  get("/movies/:the_id", { :controller => "movie", :action => "show" })
end
