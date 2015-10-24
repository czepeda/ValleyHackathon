class AddLineNumberToWebview < ActiveRecord::Migration
  def change
  	add_column :webviews, :line_number, :integer
  end
end
