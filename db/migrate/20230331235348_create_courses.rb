class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.float :duration
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
