# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  band_id    :integer          not null
#  title      :string           not null
#  date       :date             not null
#  live       :boolean          default(FALSE)
#  studio     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
  
  validates :band_id, :title, :date, presence: true
  
  belongs_to :band
  
  
end
