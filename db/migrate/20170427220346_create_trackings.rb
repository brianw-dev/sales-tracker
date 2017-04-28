class CreateTrackings < ActiveRecord::Migration
  def change
  	create_table :trackings do |t|
  		t.integer :order_cost, null:false
  		t.integer :num_of_tix, null:false
  		t.references :user, null:false
      	t.references :event, null:false

  		t. timestamps null:false
    end
  end
end
