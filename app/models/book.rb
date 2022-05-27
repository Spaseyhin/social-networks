class Book < ApplicationRecord
	mount_uploader :file, FileUploader
	mount_uploader :image, ImageUploader
	validates :name, presence: true 
end
