# frozen_string_literal: true

class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  mount_uploader :image, ImageUploader
  validates :name, presence: true
end
