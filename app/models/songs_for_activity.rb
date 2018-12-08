# == Schema Information
#
# Table name: songs_for_activities
#
#  id          :integer          not null, primary key
#  song_id     :integer
#  activity_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SongsForActivity < ApplicationRecord
    belongs_to :song
    belongs_to :activity
end
