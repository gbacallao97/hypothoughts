class Theory < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :writer, presence: true
  validates :explanation, presence: true
end
