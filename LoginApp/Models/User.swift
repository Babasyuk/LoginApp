//
//  Model.swift
//  LoginApp
//
//  Created by Артём on 22.11.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "1",
            password: "1111",
            person: Person.getPerson()
        )
    }
}


struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Артём",
            surname: "Бабасюк",
            photo: "АртёмБабасюк",
            bio: """
               жлвыисэмдийуфжэлиуайцоласэйциумэацкфжл
               """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "ООО СочиСпецТранс",
            jobTitle: .manager,
            department: .management
        )
    }
}

enum JobTitle: String {
    case manager = "manager"
    case marketolog = "marketolog"
}

enum Department: String {
    case management = "Management"
    case marketing = "Marketing"
}
