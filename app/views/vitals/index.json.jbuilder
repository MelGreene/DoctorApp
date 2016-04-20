json.array!(@vitals) do |vital|
  json.extract! vital, :id, :Height, :Weight, :HeadCircumference, :Date
  json.url vital_url(vital, format: :json)
end
