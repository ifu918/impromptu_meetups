Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "friendships#index"
  # Routes for the Check in resource:

  # CREATE
  get("/check_ins/new", { :controller => "check_ins", :action => "new_form" })
  post("/create_check_in", { :controller => "check_ins", :action => "create_row" })

  # READ
  get("/check_ins", { :controller => "check_ins", :action => "index" })
  get("/check_ins/:id_to_display", { :controller => "check_ins", :action => "show" })

  # UPDATE
  get("/check_ins/:prefill_with_id/edit", { :controller => "check_ins", :action => "edit_form" })
  post("/update_check_in/:id_to_modify", { :controller => "check_ins", :action => "update_row" })

  # DELETE
  get("/delete_check_in/:id_to_remove", { :controller => "check_ins", :action => "destroy_row" })

  #------------------------------

  # Routes for the Location resource:

  # CREATE
  get("/locations/new", { :controller => "locations", :action => "new_form" })
  post("/create_location", { :controller => "locations", :action => "create_row" })

  # READ
  get("/locations", { :controller => "locations", :action => "index" })
  get("/locations/:id_to_display", { :controller => "locations", :action => "show" })

  # UPDATE
  get("/locations/:prefill_with_id/edit", { :controller => "locations", :action => "edit_form" })
  post("/update_location/:id_to_modify", { :controller => "locations", :action => "update_row" })

  # DELETE
  get("/delete_location/:id_to_remove", { :controller => "locations", :action => "destroy_row" })

  #------------------------------

  # Routes for the Activity resource:

  # CREATE
  get("/activities/new", { :controller => "activities", :action => "new_form" })
  post("/create_activity", { :controller => "activities", :action => "create_row" })

  # READ
  get("/activities", { :controller => "activities", :action => "index" })
  get("/activities/:id_to_display", { :controller => "activities", :action => "show" })

  # UPDATE
  get("/activities/:prefill_with_id/edit", { :controller => "activities", :action => "edit_form" })
  post("/update_activity/:id_to_modify", { :controller => "activities", :action => "update_row" })

  # DELETE
  get("/delete_activity/:id_to_remove", { :controller => "activities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Friendship resource:

  # CREATE
  get("/friendships/new", { :controller => "friendships", :action => "new_form" })
  post("/create_friendship", { :controller => "friendships", :action => "create_row" })

  # READ
  get("/friendships", { :controller => "friendships", :action => "index" })
  get("/friendships/:id_to_display", { :controller => "friendships", :action => "show" })

  # UPDATE
  get("/friendships/:prefill_with_id/edit", { :controller => "friendships", :action => "edit_form" })
  post("/update_friendship/:id_to_modify", { :controller => "friendships", :action => "update_row" })

  # DELETE
  get("/delete_friendship/:id_to_remove", { :controller => "friendships", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
