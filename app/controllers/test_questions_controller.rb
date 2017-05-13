class TestQuestionsController < ApplicationController
  before_filter :set_test_question, only: [:show, :user_response]

  def show
    @question = @test_question.question
    test_questions_ids = TestQuestion.where(test_id: @test_question.test_id).pluck(:id).sort
    @first_question_id = test_questions_ids.first
    @last_question_id = test_questions_ids.last
  end

  def user_response
    @test_question.update(user_response: params[:user_response])
  end

  private
    def set_test_question
      @test_question = TestQuestion.where(id: params[:id]).last
      (redirect_to :back if @test_question.blank?) rescue redirect_to root_path
    end
end
