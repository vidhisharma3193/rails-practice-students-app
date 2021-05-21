# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.delete_all
Student.delete_all


i1 = Instructor.create(name: "Vidhi")
i2 = Instructor.create(name: "Eli")

s1 = Student.create(name: "Varvara", age: 19, instructor_id: i1.id, major: "CS")
s2 = Student.create(name: "Aaron", age: 19, instructor_id: i1.id, major: "CS")
s3 = Student.create(name: "Jordan", age: 19, instructor_id: i2.id, major: "DS")
s4 = Student.create(name: "Naush", age: 19, instructor_id: i2.id, major: "DS")
