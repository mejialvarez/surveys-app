class SingleAnswerQuestion < Question
  after_initialize :defaults

  def answer_options=(answer_options)
    self.data["answer_options"] = answer_options
  end

  def answer_options
    self.data["answer_options"]
  end

  private

    def defaults
      self.data ||= {
        "answer_options" => [],
      }
    end
end