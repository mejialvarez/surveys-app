class Question < ApplicationRecord
  belongs_to :survey

  jsonb_accessor :data,
    answer_options: [:string, array: true, default: []]

  validates :title, presence: true, length: { minimum: 4 }
  validates :data, presence: true
end
