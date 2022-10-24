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
    
    init (name: String, surname: String, age: Int, grade: Int, gradePointAverage: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.grade = grade
        self.gradePointAverage = gradePointAverage
    }
}

class Teachers {
    var name: String
    var surname: String
    var age: Int
    
    init (name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
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
    func deleteStudentsFromArray() {
        studentsArray.removeLast()
        dump(studentsArray)
    }
    //Метод для удаления преподавателей из массива
    func deleteTeacherFromArray() {
        teachersArray.removeLast()
        dump(teachersArray)
    }
    //Метод для отображения полного списка студентов
    func showStudentInfo() {
            for i in 0..<studentsArray.count {
                print("Номер ученика в БД: \(i + 1)")
                print("Имя: \(studentsArray[i].name)\nФамилия: \(studentsArray[i].surname)\nВозраст: \(studentsArray[i].age)\nКласс: \(studentsArray[i].grade)\nСредний балл: \(studentsArray[i].gradePointAverage)")
                print("----------------")
            }
        }
    //Метод для отображения полного списка студентов
    func showTeacherInfo() {
            for i in 0..<teachersArray.count {
                print("Номер преподавателя в БД: \(i + 1)")
                print("Имя: \(teachersArray[i].name)\nФамилия: \(teachersArray[i].surname)\nВозраст: \(teachersArray[i].age)")
                print("----------------")
            }
        }
}
var studentsAndTeachers = DataBase()
studentsAndTeachers.addStudentsInArray(students: Students(name: "Илон", surname: "Маск", age: 15, grade: 9, gradePointAverage: 5))
studentsAndTeachers.addStudentsInArray(students: Students(name: "Билл", surname: "Гейтс", age: 14, grade: 8, gradePointAverage: 3))
studentsAndTeachers.addStudentsInArray(students: Students(name: "Марк", surname: "Цукерберг", age: 10, grade: 4, gradePointAverage: 5))
studentsAndTeachers.addTeachersInArray(teachers: Teachers(name: "Исаак", surname: "Ньютон", age: 35))
studentsAndTeachers.addTeachersInArray(teachers: Teachers(name: "Альберт", surname: "Эйнштейн", age: 45))
studentsAndTeachers.addTeachersInArray(teachers: Teachers(name: "Никола", surname: "Тесла", age: 30))
studentsAndTeachers.countOfStudents()
studentsAndTeachers.showStudentInfo()
studentsAndTeachers.countOfTeachers()
studentsAndTeachers.showTeacherInfo()
studentsAndTeachers.deleteStudentsFromArray()
studentsAndTeachers.deleteTeacherFromArray()



