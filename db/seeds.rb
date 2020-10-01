s = Survey.new(title: 'Survey example')
s.save

s.questions.create(title: 'Overall, how satisfied or dissatisfied are you with our company?',
    answer_options: [
      'Very satisfied',
      'Somewhat satisfied',
      'Very dissatisfied']
    )

s.questions.create(title: 'Which of the following words would you use to describe our products? Select all that apply.',
    answer_options: [
      'Reliable',
      'Hight quality',
      'Unique']
    )

