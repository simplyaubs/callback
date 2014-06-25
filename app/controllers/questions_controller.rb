class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(q: params[:question][:q])
    redirect_to questions_path
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    question.update(q: params[:question][:q])
    redirect_to questions_path
  end

  def destroy
    question = Question.find(params[:id])
    question.delete
    redirect_to questions_path
  end

end