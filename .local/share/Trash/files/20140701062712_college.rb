class College < ActiveRecord::Migration
  def change
  	create_table :College do |t|
  		t.string :name
  		t.string :dept
  		t.string :email
  		t.integer :phone
  		t.timestamps
  	end
  end
end
