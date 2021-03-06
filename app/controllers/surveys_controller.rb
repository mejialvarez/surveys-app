class SurveysController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
  end

  def create
    @survey = Survey.new(survey_params)
    
    if @survey.save
      redirect_to surveys_path
    else
      render :new
    end
  end

  def complete
    survey = Survey.find(params[:id])
    params[:questions].each do |question_id, answer|
      survey.answers.create(question_id: question_id, answer: answer['answer'])
    end

    redirect_to survey, notice: 'The survey was sent!'
  end

  def summary
    @survey = Survey.find(params[:id])
    questions = @survey.questions
    @metrics = []
    questions.each do |question|
      @metrics << { question_title: question.title, answers: Answer.totalByQuestion(question) }
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:title, questions_attributes: [:title, answer_options:[]])
  end
end