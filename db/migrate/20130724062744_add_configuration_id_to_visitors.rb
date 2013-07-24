class AddConfigurationIdToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :configuration_id, :integer
  end
end
