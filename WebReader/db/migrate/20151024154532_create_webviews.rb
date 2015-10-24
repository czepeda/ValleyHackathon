class CreateWebviews < ActiveRecord::Migration
  def change
    create_table :webviews do |t|
      t.string :url

      t.timestamps
    end
  end
end
