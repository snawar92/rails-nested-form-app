class QuestionsController < ApplicationController
  def index
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.create(params.require(:question).permit(:title))
    redirect_to survey_path(@survey)
  end


  def destroy
    @survey = Survey.find(params[:id])
    @question = @survey.questions.find(params[:survey_id])
    @question.destroy
    redirect_to survey_path(@survey)
  end
end
