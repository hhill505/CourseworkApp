class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :major
      t.string :year
      t.string :netid
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
