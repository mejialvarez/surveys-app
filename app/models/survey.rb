class Survey < ApplicationRecord
  has_many :questions
  has_many :answers

  accepts_nested_attributes_for :questions

  validates :title, presence: true, length: { minimum: 4 }
end
