class Question < ApplicationRecord
  has_many :test_questions
  has_many :options
  has_one :answer, class_name: "Option"
end
