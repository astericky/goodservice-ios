import UIKit

struct Employee: Codable {
  var name: String
  var id: Int
  var favoriteToy: Toy
  
  enum CodingKeys: String, CodingKey {
    case id = "employeeId"
    case name
    case favoriteToy
  }
}

struct Toy: Codable {
  var name: String
}

let toy1 = Toy(name: "Teddy Bear")
let employee1 = Employee(name: "John Appleseed", id: 7, favoriteToy: toy1)

// Encode JSON Data
let jsonEncoder = JSONEncoder()
let jsonData = try jsonEncoder.encode(employee1)
//print(jsonData)

let jsonString = String(data: jsonData, encoding: .utf8)
//print(jsonString)

// Decode JSON data
let jsonDecoder = JSONDecoder()
let employee2 = try jsonDecoder.decode(Employee.self, from: jsonData)
