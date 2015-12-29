class Color < ApplicationRecord

  has_many :plogs

  scope :available, -> {
    select(:id, :name, :code)
  }
end