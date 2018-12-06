# == Schema Information
#
# Table name: playlists_for_activities
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  playlist_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PlaylistsForActivity < ApplicationRecord
    belongs_to :playlist, :required => false
    belongs_to :activity, :required => false
end
