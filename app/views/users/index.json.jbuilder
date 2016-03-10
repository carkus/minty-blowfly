json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :salt, :refid, :active, :follows, :text, :tagline, :status, :userimage, :titleimage
  json.url user_url(user, format: :json)
end
