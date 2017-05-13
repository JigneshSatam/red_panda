class TestsController < ApplicationController
  def index
    @tests = current_user.tests
  end

  def create
    test = Test.new(user_id: current_user.id, description: "Test")
    Question.pluck(:id).each do |question_id|
      test.test_questions.build(question_id: question_id)
    end
    test.save!
    redirect_to test_question_path(test.test_questions.first.id)
  end

  def test1
    @question = Question.first(2).last
    @first_question_id = 1
    @last_question_id = Question.last.id
    render "questions/show"
  end
end
