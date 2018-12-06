# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  artist     :text
#  song_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ApplicationRecord
    has_many :recommends
    has_many :songs_for_activities
    has_many :playlists_songs
    has_many :playlists, :through => :playlists_songs, :source => :playlist
    has_many :activities, :through => :songs_for_activities, :source => :activity
    validates :song_name, :presence => true
    validates :song_name, :uniqueness => { :scope => [:artist] }
    validates :artist, :presence => true
end
