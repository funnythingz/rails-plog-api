class Plog < ApplicationRecord
  belongs_to :color, foreign_key: 'color_id'
  belongs_to :user, foreign_key: 'owner_id'

  scope :available, -> {
    select(:id, :color_id, :owner_id, :content)
  }
end
