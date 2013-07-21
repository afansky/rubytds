class AddLandingUrlToConfigurations < ActiveRecord::Migration
  def change
    add_column :configurations, :landing_url, :string
  end
end
