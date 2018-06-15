# == Schema Information
#
# Table name: tracks
#
#  id         :bigint(8)        not null, primary key
#  album_id   :integer          not null
#  title      :string           not null
#  ord        :integer          not null
#  lyrics     :text
#  track_type :string           default("Regular")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  
  validates :album_id, :title, :ord, presence: true
  validates scope: [:album_id, :ord], uniqueness: true
  
  belongs_to :album
  
  has_one :band,
    through: :album,
    source: :band
end
