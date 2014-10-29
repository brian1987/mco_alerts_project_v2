json.array!(@mco_uploads) do |mco_upload|
  json.extract! mco_upload, :id, :first_name, :last_name, :dob, :medicaid_id, :alert
  json.url mco_upload_url(mco_upload, format: :json)
end
