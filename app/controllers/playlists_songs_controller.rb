class PlaylistsSongsController < ApplicationController
  def index
    @playlists_songs = PlaylistsSong.all

    render("playlists_song_templates/index.html.erb")
  end

  def show
    @playlists_song = PlaylistsSong.find(params.fetch("id_to_display"))

    render("playlists_song_templates/show.html.erb")
  end

  def new_form
    @playlists_song = PlaylistsSong.new
    @songs = Song.all
    @playlists = Playlist.all
    

    render("playlists_song_templates/new_form.html.erb")
  end

  def create_row
    @songs_ids = params.fetch("song_id")
    @songs_ids.each do |song_id|
    
    @playlists_song = PlaylistsSong.new
    @playlists_song.song_id = song_id
    @playlists_song.playlist_id = params.fetch("playlist_id")
  
    if @playlists_song.valid?
      @playlists_song.save

    else
      @lists = Playlist.all
      render("playlists_song_templates/new_form_with_errors.html.erb")
      return
    end
  end
  redirect_to("/playlists", :notice => "The songs were added successfully.")
  end

  def edit_form
    @playlists_song = PlaylistsSong.find(params.fetch("prefill_with_id"))

    render("playlists_song_templates/edit_form.html.erb")
  end

  def update_row
    @playlists_song = PlaylistsSong.find(params.fetch("id_to_modify"))

    @playlists_song.song_id = params.fetch("song_id")
    @playlists_song.playlist_id = params.fetch("playlist_id")

    if @playlists_song.valid?
      @playlists_song.save

      redirect_to("/playlists_songs/#{@playlists_song.id}", :notice => "Playlists song updated successfully.")
    else
      render("playlists_song_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @playlists_song = PlaylistsSong.find(params.fetch("id_to_remove"))

    @playlists_song.destroy

    redirect_to("/playlists_songs", :notice => "Playlists song deleted successfully.")
  end
end
