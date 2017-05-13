class ChangeCloumnsOfQuestion < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :test_id
    add_column :questions, :answer_id, :integer
  end
end
