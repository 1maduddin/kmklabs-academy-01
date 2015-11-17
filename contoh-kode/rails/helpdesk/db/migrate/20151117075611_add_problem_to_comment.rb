class AddProblemToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :problem, index: true, foreign_key: true
  end
end
