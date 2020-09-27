# frozen_string_literal: true

class Image < ApplicationRecord
  belongs_to :menu

#   mount_uploader :image, ImagesUploader
end
