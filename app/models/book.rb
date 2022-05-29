# frozen_string_literal: true

class Book < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  mount_uploader :image, ImageUploader
  validates :name, presence: true
end
