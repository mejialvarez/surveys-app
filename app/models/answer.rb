class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :survey

  jsonb_accessor :data,
    answer: [:string]
end
