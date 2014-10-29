class McoUpload < ActiveRecord::Base
  mount_uploader :alert, AlertUploader 
  # Tells rails to use this uploader for this model.
end
