class Color < ApplicationRecord

  scope :available, -> {
    select(:id, :name, :code)
  }
end