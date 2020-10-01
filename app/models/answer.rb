class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :survey

  jsonb_accessor :data,
    answer: [:string]

  def self.totalByQuestion(question)
    Answer.where(question: question)
        .group_by(&:answer)
        .map { |answer, list| [answer, list.size] }
        .to_h
  end
end
