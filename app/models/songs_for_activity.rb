class SongsForActivity < ApplicationRecord
    belongs_to :song
    belongs_to :activity
end
