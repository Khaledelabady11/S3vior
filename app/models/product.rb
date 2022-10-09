class Product < ApplicationRecord
  belongs_to :source_page
  belongs_to :source

  attribute :active, default: false
  validates :url, presence: true, uniqueness: true

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

end
