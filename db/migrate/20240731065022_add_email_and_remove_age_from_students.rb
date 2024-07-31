class AddEmailAndRemoveAgeFromStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :email, :string
    remove_column :students, :age, :integer
  end
end
