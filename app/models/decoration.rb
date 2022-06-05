# frozen_string_literal: true

class Decoration < ApplicationRecord
  validates :lastname, presence: true
  validates :country, presence: true
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items
  belongs_to :user
end
