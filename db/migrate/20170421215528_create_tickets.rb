class CreateTickets < ActiveRecord::Migration
  def change
  	create_table :tickets do |t|
  		t.integer :initial_price, null:false
  		t.integer :sell_price
  		t.references :user
      t.references :event

  		t. timestamps null:false
    end
  end
end
