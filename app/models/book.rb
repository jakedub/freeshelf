class Book < ApplicationRecord
#   validates :title, presence: true,
#                     length: { minimum: 1 }
#
# validates :image, file_size: { less_than: 1.megabytes }
mount_uploader :image, ImageUploader
# validates_processing_of :image
# validate :image_size_validation
belongs_to :user
private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
