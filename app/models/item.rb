class Item < ApplicationRecord
  validates_presence_of :name
  validates_inclusion_of :consumable, :in => [true, false]
  has_many :center_items
  has_many :centers, through: :center_items
end
