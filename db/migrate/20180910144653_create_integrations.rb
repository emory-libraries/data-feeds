class CreateIntegrations < ActiveRecord::Migration[5.1]
  def change
    create_table :integrations do |t|
    	t.string :ip_address
    	# t.string :port
    	t.string :title

      t.timestamps
    end
  end
end
