Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {controller: "directors", action: "index"})

  get("/directors/:d_id", {controller: "directors", action: "show"})
end
