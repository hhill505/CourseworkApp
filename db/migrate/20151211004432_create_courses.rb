class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.decimal :credits
      t.boolean :majorrequirement
      t.text :description

      t.timestamps null: false
    end
  end
end
