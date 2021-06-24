class AddCommentToDecisions < ActiveRecord::Migration[6.0]
  def change
    add_column :decisions, :comment, :string
  end
end
