# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
Student.delete_all
Teacher.delete_all
Mark.delete_all

# Create Students
students = [
  { name: 'Aditi Biramane', email: 'aditi11@example.com', grade: 'A' },
  { name: 'Sampada Deshmukh', email: 'sampada12@example.com', grade: 'B' },
  { name: 'Priya Yawale', email: 'priya13@example.com', grade: 'A' },
  { name: 'Trupti Pawar', email: 'trupti14@example.com', grade: 'C' },
  { name: 'Hema Bhosale', email: 'hema14@example.com', grade: 'B' },
  { name: 'Nikita Margaje', email: 'nikita15@example.com', grade: 'B' },
  { name: 'Snehal Deshmukh', email: 'snehal16@example.com', grade: 'A' },
  { name: 'Payal Wagh', email: 'payal17@example.com', grade: 'B' },
  { name: 'Shrutika Kasture', email: 'shrutika18@example.com', grade: 'C' },
  { name: 'Pooja Patil', email: 'pooja19@example.com', grade: 'C' }
]

students.each do |student|
  Student.create(student)
end

# Create Teachers
teachers = [
  { name: 'Mr. Akshay', subject: 'Mathematics' },
  { name: 'Mr. Yaman', subject: 'English' },
  { name: 'Mrs. Sayali', subject: 'History' },
  { name: 'Mr. Deshpande', subject: 'Science' },
  { name: 'Mr. Rajesh', subject: 'Art' }
  { name: 'Mr. Pande', subject: 'C++' },
  { name: 'Mr. Sachit', subject: 'Data Science' },
  { name: 'Mrs. Priyanka', subject: 'PHP' },
  { name: 'Mr. Umesh', subject: 'Ruby on Rails' },
  { name: 'Mr. Chetas', subject: 'Graphics' }
]

teachers.each do |teacher|
  Teacher.create(teacher)
end

# Create Marks
marks = [
  { student_id: Student.find_by(name: 'Aditi Biramane').id, teacher_id: Teacher.find_by(name: 'Mr.Akshay').id, subject: 'Mathematics', marks: 85 },
  { student_id: Student.find_by(name: 'Sampada Deshmukh').id, teacher_id: Teacher.find_by(name: 'Mr. Yaman').id, subject: 'English', marks: 92 },
  { student_id: Student.find_by(name: 'Priya Yawale').id, teacher_id: Teacher.find_by(name: 'Mrs. Sayali').id, subject: 'History', marks: 78 },
  { student_id: Student.find_by(name: 'Trupti Pawar').id, teacher_id: Teacher.find_by(name: 'Mr. Deshpande').id, subject: 'Science', marks: 88 },
  { student_id: Student.find_by(name: 'Hema Bhosale').id, teacher_id: Teacher.find_by(name: 'Mr. Rajesh').id, subject: 'Art', marks: 91 }
  { student_id: Student.find_by(name: 'Nikita Margaje').id, teacher_id: Teacher.find_by(name: 'Mr. Pande').id, subject: 'C++', marks: 85 },
  { student_id: Student.find_by(name: 'Snehal Deshmukh').id, teacher_id: Teacher.find_by(name: 'Mr. Sachit').id, subject: 'Data Science', marks: 92 },
  { student_id: Student.find_by(name: 'Payal Wagh').id, teacher_id: Teacher.find_by(name: 'Mrs. Priyanka').id, subject: 'PHP', marks: 78 },
  { student_id: Student.find_by(name: 'Shrutika Kasture').id, teacher_id: Teacher.find_by(name: 'Mr. Umesh').id, subject: 'Ruby on Rails', marks: 88 },
  { student_id: Student.find_by(name: 'Pooja Patil').id, teacher_id: Teacher.find_by(name: 'Mr. Chetas').id, subject: 'Graphics', marks: 91 }
]

marks.each do |mark|
  Mark.create(mark)
end

puts "Seed data created successfully!"
