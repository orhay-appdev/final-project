# == Schema Information
#
# Table name: playlists
#
#  id                  :integer          not null, primary key
#  description         :text
#  user_id             :integer
#  playlist_name       :string
#  spotify_playlist_id :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Playlist < ApplicationRecord
    belongs_to :user, :required => false
    has_many :playlists_for_activities
    has_many :playlists_songs
    has_many :songs, :through => :playlists_songs, :source => :song
    has_many :activities, :through => :playlists_for_activities, :source => :activity
    validates :playlist_name, :length => { :minimum => 4, :maximum => 100 }
    validates :playlist_name, :presence => true
    validates :playlist_name, :uniqueness => true
end
