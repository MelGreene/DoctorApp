json.array!(@parents) do |parent|
  json.extract! parent, :id, :ParentID, :PLastName, :PFirstName, :Email, :Phone
  json.url parent_url(parent, format: :json)
end
