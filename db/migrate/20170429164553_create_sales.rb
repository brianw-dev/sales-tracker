class CreateSales < ActiveRecord::Migration
  def change
  	  	create_table :sales do |t|
  		t.decimal :price, precision: 8, scale: 2, null:false
  		t.integer :num_of_tix, null:false
  		t.references :user, null:false
      	t.references :event, null:false

  		t. timestamps null:false
    end
  end
end
