class CreateTickets < ActiveRecord::Migration
  def change
  	create_table :tickets do |t|
  		t.float :initial_price null:false
  		t.float :sell_price
  		t.references :event

  		t. timestamps null:false
  end
end
