//
//  main.swift
//  Lesson1.1
//
//  Created by Bedirhan Yüksek on 20.08.2025.
//

import Foundation

struct PersonalCard {
    var name: String
    var surname: String
    var gender: String?
    var age: Int?
    var isStudent: Bool
    var schoolName: String?
    var grade: Int
    
    init(name: String , surname: String , gender: String? = nil, age: Int? = nil, isStudent: Bool, schoolName: String? = nil, grade: Int) {
        
        self.name = name
        self.surname = surname
        self.gender = gender
        self.age = age
        self.isStudent = isStudent
        self.schoolName = schoolName
        self.grade = grade
    }
}


var personalCard = PersonalCard(
    name: "Bedirhan",
    surname: "Yüksek",
    gender: "Male",
    age: 22,
    isStudent: true,
    grade: 10
)

if let gender = personalCard.gender {
    print("\(gender)")
} else {
    print("Cinsiyetiniz bilinmiyor.")
}
if let schoolName = personalCard.schoolName {
    print("\(schoolName)")
} else {
    print("Okul Adınız bilinmiyor.")
}

print(personalCard)


print("Gender (??):",personalCard.gender ?? "-")
print("SchoolName (??):",personalCard.schoolName ?? "-")




