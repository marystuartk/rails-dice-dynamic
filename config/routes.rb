Rails.application.routes.draw do
get("/", {:controller =>"zebra" , :action => "rules"})

get("/dice/2/6", {:controller =>"zebra" , :action => "giraffe"})

get("/dice/2/10", {:controller =>"zebra" , :action => "lion"})

get("/dice/1/20", {:controller =>"zebra" , :action => "hippo"})

get("/dice/5/4", {:controller =>"zebra" , :action => "snake"})

get("/dice/:number_of_dice/:number_of_sides", {:controller =>"zebra" , :action => "koala"})

end
