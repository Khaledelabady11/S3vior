class Source < ApplicationRecord
  attribute :active, default: true

  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

  has_many :source_pages , dependent: :destroy
  has_many :products

end
