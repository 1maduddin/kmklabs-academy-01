class AddProductToProblem < ActiveRecord::Migration
  def change
    add_reference :problems, :product, index: true, foreign_key: true
  end
end
