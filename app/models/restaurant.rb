class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  AUTHORIZED_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: AUTHORIZED_CATEGORIES }
end
