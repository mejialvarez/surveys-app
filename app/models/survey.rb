class Survey < ApplicationRecord
  has_many :questions

  accepts_nested_attributes_for :questions

  validates :title, presence: true, length: { minimum: 4 }
end
