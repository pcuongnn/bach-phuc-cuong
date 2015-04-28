class Shoe < ActiveRecord::Base
	validates :name,:description,:price, presence: true
	validates :name, length: {minimum: 5}
	validates :description, length: {maximum: 255}
	validates :price,numericality: true
	default_scope {order('price DESC')}

	mount_uploader :image, ImageUploader
	belongs_to :category
	belongs_to :company
	
end
