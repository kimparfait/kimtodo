class CreateListings < ActiveRecord::Migration
  def up
    create_table :listings do |t|
    	t.text :description 
    end
  end
  def down 
  	drop_table  :listings
  end 
end
