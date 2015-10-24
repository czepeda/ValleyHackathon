class CreateWebviews < ActiveRecord::Migration
  def change
    create_table :webviews do |t|
      t.string :aurl

      t.timestamps
    end
  end
end
