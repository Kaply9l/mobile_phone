# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_float: true, greater_than: 0 }

  has_many :galleries

  belongs_to :category

  has_many :related_products
  has_many :related, through: :related_products

  enum hit: { hit: 1, not_hit: 0 }
  enum status: { active: 1, not_active: 0 }

  scope :active, -> { where(status: 1) }
end
