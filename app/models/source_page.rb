class SourcePage < ApplicationRecord
  attribute :active, default: true

  belongs_to :source
  has_many :products
  
  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

end
