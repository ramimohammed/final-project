class Asset < ActiveRecord::Base
    belongs_to :property
    mount_uploader :file, FileUploader
end
