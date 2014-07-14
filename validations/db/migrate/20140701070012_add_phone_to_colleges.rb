class AddPhoneToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :phone, :integer
  end
end
