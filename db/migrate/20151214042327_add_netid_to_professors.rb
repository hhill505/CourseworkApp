class AddNetidToProfessors < ActiveRecord::Migration
  def change
    add_column :professors, :netid, :string
  end
end
