require 'digest/md5'

class User < ApplicationRecord

  scope :available, -> {
    select(:id)
  }

  scope :me, -> (access_token) {
    where(access_token: access_token).select(:id).first
  }

  def create_access_token
    update(access_token: Digest::MD5.hexdigest("#{Time.new.to_i.to_s}#{SecureRandom.base64(12)}"))
  end
end
