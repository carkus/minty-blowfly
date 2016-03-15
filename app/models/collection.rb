class Collection < ActiveRecord::Base
  has_many :subcomponents

  # Returns a random token.
  def Collection.new_token
    SecureRandom.urlsafe_base64
  end

end
