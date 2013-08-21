class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_title
      t.text :project_description
      t.decimal :project_budget

      t.timestamps
    end
  end
end
