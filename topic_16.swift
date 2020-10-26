import UIKit

var str = "Hello, playground"

// 1 ЗАДАНИЕ

let playerOne = (game: "Counter Strike", hoursPlayed: 1209, globalRankIndex: 4.0, isInClan: false)
let playerTwo = (game: "Starcraft 2", hoursPlayed: 13020, globalRankIndex: 9.9, isInClan: true)

playerOne.game
playerOne.hoursPlayed
playerOne.globalRankIndex
playerOne.isInClan

playerTwo.0
playerTwo.1
playerTwo.2
playerTwo.3
//симуляция ошибки выхода за индекс
//playerTwo.4

// 2 ЗАДАНИЕ

let daysInMonths: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
daysInMonths.count

for days in daysInMonths {
    print(days)
}

let monthsNames: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for name in monthsNames {
    print(name)
}

var count = 0

for name in monthsNames {
    print(name, daysInMonths[count])
    count += 1
}

var monthTuplesMassive = [("January", 31), ("February", 28),("March", 31),("April", 30),("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for tuple in monthTuplesMassive {
    print("\(tuple.0)" + ": " + "\(tuple.1)")
}

for backdays in monthTuplesMassive.reversed() {
    print(backdays.1)
}

// для подсчёта дней до конца примем 14 марта
var monthNumberedMassive = [(1, "January", 31), (2, "February", 28),(3, "March", 31),(4, "April", 30),(5, "May", 31), (6, "June", 30), (7, "July", 31), (8, "August", 31), (9, "September", 30), (10, "October", 31), (11, "November", 30), (12, "December", 31)]
var selectedDay = 14
var selectedMonth = 3
let remainedMonths = monthNumberedMassive.filter{$0.0 > selectedMonth}
var remainedDaysMassive = [0]
var sum = 0
for x in remainedMonths {
    sum += x.2
}
var total = sum + (monthNumberedMassive[selectedMonth].2 - selectedDay)

// 3 ЗАДАНИЕ

var students: [String: Int] = ["Илья Олейников": 4, "Юрий Стоянов": 4, "Андрей Миронов": 5, "Данила Козловский": 1]
students.updateValue(2, forKey: "Данила Козловский")
for student in students {
    if student.value >= 3 {
        print("\(student.key), вы имеете все шансы сдать сессию!")
    } else {
        print("\(student.key), идите в деканат и записывайтесь на пересдачу.")
    }
}
// принимаем новичков
students["Гоша Куценко"] = 3
students["Людмила Гурченко"] = 5
// выгоняем Козловского
students.removeValue(forKey: "Данила Козловский")
for (name, grade) in students {
    print(name, grade)
}
func middleGrade() {
    print(Double(students.values.reduce(0, +)) / Double(students.values.count))
}
middleGrade()
