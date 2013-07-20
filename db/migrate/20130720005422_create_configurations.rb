class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :redirect_url

      t.timestamps
    end
  end
end
