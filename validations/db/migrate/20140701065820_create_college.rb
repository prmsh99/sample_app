class CreateCollege < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
    	t.string :name
    	t.string :email
    end
  end
end
