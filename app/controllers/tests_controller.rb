class TestsController < ApplicationController
  def index
    @tests = current_user.tests
  end

  def test1
    @question = Question.first(2).last
    @first_question_id = 1
    @last_question_id = Question.last.id
    render "questions/show"
  end
end
