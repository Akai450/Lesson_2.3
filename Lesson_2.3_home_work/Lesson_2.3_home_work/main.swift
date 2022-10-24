import Foundation

/*
 1. Создать класс DataBase.
 Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
 В каждом из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
 Другими способами ничего изменяться не должно
 Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
 Пример:
 #1 - Имя Фамилия - Возраст - Класс - Средний балл
 */
class Students {
    var name: String
    var surname: String
    var age: Int
    var grade: Int
    var gradePointAverage: Int
    var id: Int
    
    init (name: String, surname: String, age: Int, grade: Int, gradePointAverage: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.grade = grade
        self.gradePointAverage = gradePointAverage
        self.id = id
    }
}

class Teachers {
    var name: String
    var surname: String
    var age: Int
    var rating: Int
    var id: Int
    
    init (name: String, surname: String, age: Int, rating: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.rating = rating
        self.id = id
    }
}

class DataBase {
    private var studentsArray: [Students] = []
    private var teachersArray: [Teachers] = []
    //Метод для добавления студентов в массив
    func addStudentsInArray(students: Students) {
        studentsArray.append(students)
        //        print("Cписок студентов")
        //        dump(studentsArray)
    }
    //Метод для добавления преподавателей в массив
    func addTeachersInArray(teachers: Teachers) {
        teachersArray.append(teachers)
        //        print("Список преподавателей")
        //        dump(teachersArray)
    }
    //Метод для подсчета учеников
    func countOfStudents() {
        print ("*** Количество студентов: \(studentsArray.count) человека ***")
    }
    //Метод для подсчета преподавателей
    func countOfTeachers() {
        print ("*** Количество преподавателей: \(teachersArray.count) человека ***")
    }
    //Метод для удаления студентов из массива
    func deleteStudentsFromArray(id: Int) {
        for i in studentsArray {
            if i.gradePointAverage <= 3 {
                studentsArray.remove(at: id)
                print("Студент \(i.name) \(i.surname) средний балл которого ниже 3 удален")
            } else {
                print("Средний балл студента \(i.name) \(i.surname) соответствует")
            }
        }
    }
    //Метод для удаления преподавателей из массива
    func deleteTeachersFromArray(id: Int) {
        for i in teachersArray {
            if i.rating <= 5 {
                teachersArray.remove(at: id)
                print("Преподаватель \(i.name) \(i.surname) рейтинг которого ниже 5 удален")
            } else {
                print("Рейтинг преподавателя \(i.name) \(i.surname) соответствует")
            }
        }
    }
    //Метод для отображения полного списка студентов
    func showStudentInfo() {
        for i in 0..<studentsArray.count {
            print("Номер ученика в БД: \(i + 1)")
            print("Имя: \(studentsArray[i].name)\nФамилия: \(studentsArray[i].surname)\nВозраст: \(studentsArray[i].age)\nКласс: \(studentsArray[i].grade)\nСредний балл: \(studentsArray[i].gradePointAverage)\nID студента: \(studentsArray[i].id)")
            print("---------------------------------------------")
        }
    }
    //Метод для отображения полного списка студентов
    func showTeacherInfo() {
        for i in 0..<teachersArray.count {
            print("Номер преподавателя в БД: \(i + 1)")
            print("Имя: \(teachersArray[i].name)\nФамилия: \(teachersArray[i].surname)\nВозраст: \(teachersArray[i].age)\nРейтинг преподавателя: \(teachersArray[i].rating)\nID преподавателя: \(teachersArray[i].id)")
            print("---------------------------------------------")
        }
    }
}
var studentsAndTeachers = DataBase()
studentsAndTeachers.addStudentsInArray(students: Students(name: "Илон", surname: "Маск", age: 15, grade: 9, gradePointAverage: 5, id: 1))
studentsAndTeachers.addStudentsInArray(students: Students(name: "Билл", surname: "Гейтс", age: 14, grade: 8, gradePointAverage: 3, id: 2))
studentsAndTeachers.addStudentsInArray(students: Students(name: "Марк", surname: "Цукерберг", age: 10, grade: 4, gradePointAverage: 5, id: 3))
studentsAndTeachers.addTeachersInArray(teachers: Teachers(name: "Исаак", surname: "Ньютон", age: 35, rating: 10, id: 1))
studentsAndTeachers.addTeachersInArray(teachers: Teachers(name: "Альберт", surname: "Эйнштейн", age: 45, rating: 8, id: 2))
studentsAndTeachers.addTeachersInArray(teachers: Teachers(name: "Никола", surname: "Тесла", age: 30, rating: 5, id: 3))
studentsAndTeachers.countOfStudents()
studentsAndTeachers.showStudentInfo()
studentsAndTeachers.countOfTeachers()
studentsAndTeachers.showTeacherInfo()
studentsAndTeachers.deleteStudentsFromArray(id: 1)
studentsAndTeachers.deleteTeachersFromArray(id: 1)



