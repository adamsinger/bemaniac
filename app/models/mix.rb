class Mix < ActiveRecord::Base
  has_many    :downloads
  belongs_to  :user
  
  mount_uploader :art, ArtUploader
  mount_uploader :file, MixUploader
end
