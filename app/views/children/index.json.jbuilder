json.array!(@children) do |child|
  json.extract! child, :id, :ChildID, :CLastName, :CFirstName, :Age, :Date, :Notes
  json.url child_url(child, format: :json)
end
