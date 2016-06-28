class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :subtitle
	  t.text :category
	  t.text :start_date
	  t.text :end_date
	  t.text :start_time
	  t.text :end_time
	  t.text :venue_name
	  t.text :address
	  t.text :city
	  t.text :province
	  t.text :description
	  t.text :picture
	  t.text :video
	  t.text :ticket
	  t.text :price
	  t.text :workflow

      t.timestamps null: false
    end
  end
end
