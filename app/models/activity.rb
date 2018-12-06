# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  activity_name :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Activity < ApplicationRecord
    has_many :recommends
    has_many :songs_for_activities
    has_many :playlists_for_activities
    has_many :songs, :through => :songs_for_activities, :source => :song
    has_many :playlists, :through => :playlists_for_activities, :source => :playlist
    validates :activity_name, :presence => true
    validates :activity_name, :uniqueness => { :message => "please choose a new activity" }
end
