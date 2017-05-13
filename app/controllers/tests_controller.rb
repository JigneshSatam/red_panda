class TestsController < ApplicationController
  def index
    @tests = current_user.tests
  end

  def test1
  end
end
