class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :name
    	t.string :age
    	t.string :location
    	t.string :phone_number
    	t.string :email
    	t.string :friend
    end
  end
end
