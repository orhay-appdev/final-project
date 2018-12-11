# == Schema Information
#
# Table name: playlists_songs
#
#  id          :integer          not null, primary key
#  song_id     :integer
#  playlist_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PlaylistsSong < ApplicationRecord
    belongs_to :playlist, :required => false
    belongs_to :song, :required => false
    validates :song_id, :uniqueness => { :scope => [:playlist_id], :message => "has already been added to the playlist" }
end
