class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :name, null:false
      t.string :date, null: false
      t.string :venue, null: false

  		t.timestamps null:false
    end
  end
end
