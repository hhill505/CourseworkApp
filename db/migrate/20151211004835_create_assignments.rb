class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.date :due
      t.text :description
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
