class Shoe < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :category
	belongs_to :company
end
