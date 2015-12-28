class Resources
  include ActiveModel::Model

  attr_accessor :colors
  validates_presence_of :colors
end