class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :replies, class_name: "Tweet", foreign_key: "replied_to_id", dependent: :destroy, inverse_of: "replied_to_id"
  

  validates :body, presence: true, length: { maximum: 140 }
  # validates :replies_count # validar default
  # validates :likes_count # validar default
  # validar replied_to
end
