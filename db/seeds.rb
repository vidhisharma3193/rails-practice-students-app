
Instructor.destroy_all
Student.destroy_all

vidhi  = Instructor.create(name: "Vidhi")
raul   = Instructor.create(name: "Raul")
steven = Instructor.create(name: "Steven")

Student.create(name: "Caleb", age: 25, major: "Computer Science", instructor_id: steven.id)
Student.create(name: "Gian", age: 22, major: "Mathmatics", instructor_id: raul.id)
Student.create(name: "Anam", age: 25, major: "Engineering", instructor_id: vidhi.id)
Student.create(name: "Vien", age: 23, major: "Biology", instructor_id: raul.id)
