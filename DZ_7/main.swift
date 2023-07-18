
import Foundation

func countLetters (closure: (String) -> ()) {
    closure(text)
}

print("Введите фразу: ", terminator: "")
var text = readLine()!

countLetters(closure: { text in
    print("Количество cимволов в вашей фразе: \(text.count)") })

func somToDollars (closure: (Float) -> ()) {
    closure (som)
}

print("Введите количество сомов: ", terminator: "")
var som = Float(readLine()!)!

somToDollars(closure: { som in
    print("У вас \(som * 0.0114) долларов")
})

struct User {
    var id: Int
    var name: String
    var age: Int
    var isVerified: Bool
}

var user0 = User(id: 0, name: "Michael", age: 32, isVerified: true)
var user1 = User(id: 1, name: "Liza", age: 35, isVerified: true)
var user2 = User(id: 2, name: "Genry", age: 13, isVerified: false)
var user3 = User(id: 3, name: "Lora", age: 50, isVerified: true)
var user4 = User(id: 4, name: "Helen", age: 21, isVerified: false)

var users = [user0, user1, user2, user3, user4]

var newUsers = users.filter { element in
    element.isVerified
}

dump(newUsers)


func filter(users: [User], closure: (Int) -> ()) {
    closure(age)
  }
var age: Int

for user in users {
    age = user.age
    filter(users: users) {age in
        if age > 40 {
            print("\(user.name) is \(user.age) years old")
        }
    }
}

for user in users {
    age = user.age
    filter(users: users) {age in
        if age < 18 {
            print("\(user.name) is \(user.age) years old")
        }
    }
}
