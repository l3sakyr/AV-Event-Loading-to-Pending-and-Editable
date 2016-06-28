class AddNewColumnToMyTable < ActiveRecord::Migration
  def change
    add_column :events, :category, :string
	add_column :events, :start_date, :string
	add_column :events, :end_date, :string
	add_column :events, :start_time, :string
	add_column :events, :end_time, :string
	add_column :events, :venue_name, :string
	add_column :events, :address, :string
	add_column :events, :city, :string
	add_column :events, :province, :string
	add_column :events, :description, :string
	add_column :events, :picture, :string
	add_column :events, :video, :string
	add_column :events, :ticket, :string
	add_column :events, :price, :string
	add_column :events, :workflow, :string
  end
end
