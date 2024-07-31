class CreateMarks < ActiveRecord::Migration[7.1]
  def change
    create_table :marks do |t|
      t.integer :student_id
      t.string :student_name
      t.integer :teacher_id
      t.string :subject
      t.integer :marks

      t.timestamps
    end
  end
end
