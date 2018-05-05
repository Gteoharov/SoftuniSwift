

import UIKit

class Person {
    var name: String
    var age: Int
    var height: Int
    var weight: Float
    var personalID: String

    init(name: String, age: Int, height: Int, weight: Float, personalID: String) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.personalID = personalID
    }
}

class Student : Person {
    var marks: [Int]

    init(name: String, age: Int, height: Int, weight: Float, personalID: String, marks: [Int]) {
        self.marks = marks
        super.init(name: name, age: age, height: height, weight: weight, personalID: personalID)
    }
    
    func calculateAverageMark() -> Float {
        var markSum = 0
        var average: Float = 0.0
        for mark in marks {
            markSum += mark
        }
        average = Float(markSum) / Float(marks.count)
        if marks.count < 1 {
            return 0
        } else {
        return average
        }
    }
}

enum CategoryPerson {
    case underweight
    case normal
    case overweight
    case obesity
}

func calculateBodyMassIdex(of person: Person) -> CategoryPerson {

    // body max index = weight / ( height m2 )
    let bodyMassIndex: Float =  person.weight / ((Float(person.height) / 100) * (Float(person.height) / 100))
    if bodyMassIndex < 20.00 {
        return .underweight
    } else if bodyMassIndex > 20.00 && bodyMassIndex < 27.00 {
        return .normal
    } else if bodyMassIndex > 27.00 && bodyMassIndex < 32.00 {
        return .overweight
    } else {
        return .obesity
    }
}

func compareStudents(student1: Student, student2: Student) {
    if student1.calculateAverageMark() > student2.calculateAverageMark() {
        print("Student with name \(student1.name) has bigger average mark: \(student1.calculateAverageMark())")
    } else if student1.calculateAverageMark() < student2.calculateAverageMark() {
        print("Student with name \(student2.name) has bigger average mark: \(student2.calculateAverageMark())")
    } else {
        print("They have equal average mark \(student1.calculateAverageMark()) so as required we are returning the first student \(student1.name)")
    }
}

var zvezdelin = Student(name: "Zvezdelin", age: 28, height: 188, weight: 94.5, personalID: "BG64235213", marks: [2, 5, 4, 3, 6, 5])
var stanimir = Student(name: "Stanimir", age: 27, height: 180, weight: 67, personalID: "BG64313§424", marks: [2, 5, 4, 3, 6, 5])

stanimir.calculateAverageMark()
zvezdelin.calculateAverageMark()

calculateBodyMassIdex(of: stanimir)


compareStudents(student1: zvezdelin, student2: stanimir)












