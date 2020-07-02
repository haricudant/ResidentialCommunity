class Complain < ApplicationRecord
  belongs_to :user
  belongs_to :asset
  belongs_to :serviceprovider
  mount_uploader :attachment, AttachmentUploader
  validates :description , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }
   
     validates :appointment,:mailid,:user_id,:asset_id, presence: true
     
end
