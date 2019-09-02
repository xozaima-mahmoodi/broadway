class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :play_img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end