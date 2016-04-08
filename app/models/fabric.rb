class Fabric < ActiveRecord::Base
  belongs_to :supplier
  mount_uploader :image, ImageUploader
  validates :name, :price, presence: true
end

