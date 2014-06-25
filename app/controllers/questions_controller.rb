class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    question = Question.create(q: params[:question][:q])
    redirect_to question_path(question)
  end

  def show
    @question = Question.find(params[:id])
  end
end