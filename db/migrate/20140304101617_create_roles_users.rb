class CreateRolesUsers < ActiveRecord::Migration
  def up
	create_table :roles_users, :id => false do |t|
		t.references :roles
		t.references :users
	end
  end

  def down
	drop_table :roles_users
  end
end
