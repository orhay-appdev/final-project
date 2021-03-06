Rails.application.routes.draw do
  
  # Routes for the artists resource:

  # READ
  get '/artists', to: 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'

 # Routes for the main resource:

  # READ
  get("/mains", { :controller => "mains", :action => "index" })
  get("/mains/spotify", { :controller => "mains", :action => "spotify" })
  
   # Routes for the spotify resource:

  # READ
  get("/spotify", { :controller => "spotify", :action => "index" })

  
  # Routes for the composers resource:

  # READ
  get("/composers", { :controller => "composers", :action => "index" })
  get("/composers/:id_to_display", { :controller => "composers", :action => "show" })

  
  # Routes for the Playlists song resource:

  # CREATE
  get("/playlists_songs/new", { :controller => "playlists_songs", :action => "new_form" })
  post("/create_playlists_song", { :controller => "playlists_songs", :action => "create_row" })

  # READ
  get("/playlists_songs", { :controller => "playlists_songs", :action => "index" })
  get("/playlists_songs/:id_to_display", { :controller => "playlists_songs", :action => "show" })

  # UPDATE
  get("/playlists_songs/:prefill_with_id/edit", { :controller => "playlists_songs", :action => "edit_form" })
  post("/update_playlists_song/:id_to_modify", { :controller => "playlists_songs", :action => "update_row" })

  # DELETE
  get("/delete_playlists_song/:id_to_remove", { :controller => "playlists_songs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Playlists for activity resource:

  # CREATE
  get("/playlists_for_activities/new", { :controller => "playlists_for_activities", :action => "new_form" })
  post("/create_playlists_for_activity", { :controller => "playlists_for_activities", :action => "create_row" })

  # READ
  get("/playlists_for_activities", { :controller => "playlists_for_activities", :action => "index" })
  get("/playlists_for_activities/:id_to_display", { :controller => "playlists_for_activities", :action => "show" })

  # UPDATE
  get("/playlists_for_activities/:prefill_with_id/edit", { :controller => "playlists_for_activities", :action => "edit_form" })
  post("/update_playlists_for_activity/:id_to_modify", { :controller => "playlists_for_activities", :action => "update_row" })

  # DELETE
  get("/delete_playlists_for_activity/:id_to_remove", { :controller => "playlists_for_activities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Songs for activity resource:

  # CREATE
  get("/songs_for_activities/new", { :controller => "songs_for_activities", :action => "new_form" })
  post("/create_songs_for_activity", { :controller => "songs_for_activities", :action => "create_row" })

  # READ
  get("/songs_for_activities", { :controller => "songs_for_activities", :action => "index" })
  get("/songs_for_activities/:id_to_display", { :controller => "songs_for_activities", :action => "show" })

  # UPDATE
  get("/songs_for_activities/:prefill_with_id/edit", { :controller => "songs_for_activities", :action => "edit_form" })
  post("/update_songs_for_activity/:id_to_modify", { :controller => "songs_for_activities", :action => "update_row" })

  # DELETE
  get("/delete_songs_for_activity/:id_to_remove", { :controller => "songs_for_activities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Recommend resource:

  # CREATE
  get("/recommends/new", { :controller => "recommends", :action => "new_form" })
  post("/create_recommend", { :controller => "recommends", :action => "create_row" })

  # READ
  get("/recommends", { :controller => "recommends", :action => "index" })
  get("/recommends/:id_to_display", { :controller => "recommends", :action => "show" })

  # UPDATE
  get("/recommends/:prefill_with_id/edit", { :controller => "recommends", :action => "edit_form" })
  post("/update_recommend/:id_to_modify", { :controller => "recommends", :action => "update_row" })

  # DELETE
  get("/delete_recommend/:id_to_remove", { :controller => "recommends", :action => "destroy_row" })

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

  # Routes for the Playlist resource:

  # CREATE
  get("/playlists/new", { :controller => "playlists", :action => "new_form" })
  post("/create_playlist", { :controller => "playlists", :action => "create_row" })

  # READ
  get("/playlists", { :controller => "playlists", :action => "index" })
  get("/playlists/:id_to_display", { :controller => "playlists", :action => "show" })

  # UPDATE
  get("/playlists/:prefill_with_id/edit", { :controller => "playlists", :action => "edit_form" })
  post("/update_playlist/:id_to_modify", { :controller => "playlists", :action => "update_row" })

  # DELETE
  get("/delete_playlist/:id_to_remove", { :controller => "playlists", :action => "destroy_row" })

  #------------------------------

  # Routes for the Song resource:

  # CREATE
  get("/songs/new", { :controller => "songs", :action => "new_form" })
  post("/create_song", { :controller => "songs", :action => "create_row" })

  # READ
  get("/songs", { :controller => "songs", :action => "index" })
  get("/songs/:id_to_display", { :controller => "songs", :action => "show" })

  # UPDATE
  get("/songs/:prefill_with_id/edit", { :controller => "songs", :action => "edit_form" })
  post("/update_song/:id_to_modify", { :controller => "songs", :action => "update_row" })

  # DELETE
  get("/delete_song/:id_to_remove", { :controller => "songs", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mains#index'
end
