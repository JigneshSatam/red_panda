class QuestionsController < ApplicationController
  before_filter :set_question, only: [:show]

  def show
    @first_question_id = 1
    @last_question_id = Question.last.id
  end

  private
    def set_question
      @question = Question.where(id: params[:id]).last
      (redirect_to :back if @question.blank?) rescue redirect_to root_path
    end
end
