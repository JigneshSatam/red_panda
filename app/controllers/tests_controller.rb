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

  def review
  end

  def submit
    score = 0
    test = Test.where(id: params[:id]).last
    test.test_questions.joins(:question).each do |test_question|
      if test_question.user_response == test_question.question.answer_id
        score += 1
      end
    end
    test.update(score: score)
    redirect_to review_tests_path
  end
end
