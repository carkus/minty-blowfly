json.array!(@subcomponents) do |subcomponent|
  json.extract! subcomponent, :id, :behaviour, :refid, :ownerid, :editorid, :followerid, :views, :viewable, :active, :title, :subs, :description, :titleimage, :meat
  json.url subcomponent_url(subcomponent, format: :json)
end
