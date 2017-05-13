class RemoveIsAnswerFromOptions < ActiveRecord::Migration[5.0]
  def change
    remove_column :options, :is_answer
  end
end
