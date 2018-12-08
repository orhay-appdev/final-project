# == Schema Information
#
# Table name: recommends
#
#  id          :integer          not null, primary key
#  song_id     :integer
#  user_id     :integer
#  activity_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  text        :text
#

class Recommend < ApplicationRecord
    belongs_to :user
    belongs_to :song
    belongs_to :activity
    validates :text, :presence => true
end
