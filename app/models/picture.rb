class Picture < ApplicationRecord
  has_one_attached :filename
end
