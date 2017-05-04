class AddReferencesToFeedbacks < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :users, foreign_key: true
  end
end
