//
//  topic_18_task.swift
//  
//
//  Created by Vladimir Minaev on 09.11.2020.
//

import Foundation

/*
 ЗАДАНИЕ 1
 */

enum networkErrors: Error {
    
    case error400 // Bad Request («плохой, неверный запрос»)
    case error404 // Not Found («не найдено»)
    case error500 // Internal Server Error («внутренняя ошибка сервера»
    
}

var badRequest: Bool = false // Default State
var notFound: Bool = true    // Here comes the trouble
var internalServer: Bool = false

do {
    if badRequest {
        throw networkErrors.error400
    }
    
    if notFound {
        throw networkErrors.error404
    }
    
    if internalServer {
        throw networkErrors.error500
    }
} catch networkErrors.error400 {
    print("Неверный запрос! Попробуйте сформировать свой URL, GET или POST-запрос заново или обратитесь к документации")
} catch networkErrors.error404 {
    print("Файл не найден! Попробуйте уточнить адрес в URL, GET или POST-запросе или убедитесь в наличии файла через SSH/SFTP вручную")
} catch networkErrors.error500 {
    print("Внутренняя ошибка сервера! Убедитесь в корректности своего URL, GET или POST-запроса или убедитесь в работоспособности сервера через Zabbix или Hypervision")
}

/*
 ЗАДАНИЕ 2
 */

func integrationCheck() throws {
    if badRequest {throw networkErrors.error400}
    if notFound {throw networkErrors.error404}
    if internalServer {throw networkErrors.error500}
}

try? integrationCheck()

do {
    try integrationCheck()
} catch networkErrors.error400 {
    print("Неверный запрос! Попробуйте сформировать свой URL, GET или POST-запрос заново или обратитесь к документации")
} catch networkErrors.error404 {
    print("Файл не найден! Попробуйте уточнить адрес в URL, GET или POST-запросе или убедитесь в наличии файла через SSH/SFTP вручную")
} catch networkErrors.error500 {
    print("Внутренняя ошибка сервера! Убедитесь в корректности своего URL, GET или POST-запроса или убедитесь в работоспособности сервера через Zabbix или Hypervision")
}

/*
 ЗАДАНИЕ 3
 */

// невнимательно прочитал задание, настоящее задание ниже

func equalizer<T: Equatable>(fisrt: T, second: T) -> String {
    if fisrt == second {
        print("Yes")
        return "Yes"
    } else {
        print("No")
        return "No"
    }
}

equalizer(fisrt: 17, second: 51)

// настоящее задание

func typeEqualizer<T, U>(firstType: T, secondType: U) {
    if type(of: firstType) == type(of: secondType) {
        print("Yes")
    } else {
        print("No")
    }
}

typeEqualizer(firstType: 32, secondType: "Thirty Two")

/*
 ЗАДАНИЕ 4
 */

enum typeErrors: Error {
    
    case yes    // if type is equal
    case no     // if type is unequal
    
}

func throwingEqualizer<T, U>(firstType: T, secondType: U) throws {
    if type(of: firstType) == type(of: secondType) {
        throw typeErrors.yes
    } else {
        throw typeErrors.no
    }
}

do {
    try throwingEqualizer(firstType: "32", secondType: "Thirty Two")
} catch typeErrors.yes {
    print("Yes")
} catch typeErrors.no {
    print("No")
}

/*
 ЗАДАНИЕ 5
 */

func iDoNotKnowWhy<T: Equatable>(memberA: T, memberB: T) {
    if memberA == memberB {
        print("\(memberA) and \(memberB) are totally equal")
    } else {
        print("Something is different between \(memberA) and \(memberB)")
    }
}

iDoNotKnowWhy(memberA: "Borscht", memberB: "🍛")
