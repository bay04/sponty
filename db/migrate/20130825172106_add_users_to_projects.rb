class AddUsersToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :created_by, :string
  end
end
