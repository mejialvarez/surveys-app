class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    
    if @survey.save
      redirect_to surveys_path
    else
      render :new
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:title, questions_attributes: [:title, answer_options:[]])
  end
end