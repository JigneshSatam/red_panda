class TestsController < ApplicationController
  def index
    @tests = current_user.tests
  end
end
