class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :firstname
      t.string :lastname
      t.string :department
      t.string :email
      t.string :location
      t.string :password
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
