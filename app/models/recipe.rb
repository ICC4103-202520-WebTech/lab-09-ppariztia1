class Recipe < ApplicationRecord
  validates :title :instructions, presence: true
  has_rich_text :instructions
end
