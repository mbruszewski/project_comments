class AddStatusToProjects < ActiveRecord::Migration[7.2]
  def change
    add_column :projects, :status, :string, default: 'new'
  end
end
