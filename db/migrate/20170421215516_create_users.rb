class CreateUsers < ActiveRecord::Migration
  def change
  	  	create_table :users do |t|
  		t.string :username, null: false
  		t.string :password_hash

  		t.timestamps null:false
  end
end

  # def change
  #   create_table :users do |t|
  #     t.string :username, {null: false}
  #     t.string :password_hash

  #     t.timestamps(null:false)
  #   end
  # en