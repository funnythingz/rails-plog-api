class ErrorResponseCode
  include ActiveModel::Model

  attr_accessor :status
  validates_presence_of :status
end