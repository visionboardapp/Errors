import Foundation

//Задание 1
enum AutoError: Error {
    case error400 // 400 Bad Request
    case error404 // 404 Not Found
    case error500 // 500 Internal Server Error
}
 
var error400: Bool = false
var error404: Bool = false
var error500: Bool = true
 
do {
    if error400 {
        throw AutoError.error400
    }
 
    if error404 {
        throw AutoError.error404
    }
 
    if error500 {
        throw AutoError.error500
    }
} catch AutoError.error400 {
    print("Неверный запрос.")
} catch AutoError.error404 {
    print("Неверный запрос.")
} catch AutoError.error500 {
    print("Внутренняя ошибка сервера.")
}





////Задание 3
func compareTypes<T, E>(a: T, b: E) {
    if T.self == E.self {
        print("yes")
    }else{
        print("no")
    }
}
compareTypes(a: 33, b: 22)





//Задание 4
enum CompareError: Error {
    case equal
    case notEqual
}

func compareTypesWithErrors<T, E>(a: T, b: E) throws {
    if T.self == E.self {
        throw CompareError.equal
    }else{
        throw CompareError.notEqual
    }
}




////Задание 5
func compareArguments<T:Equatable>(a: T, b: T) -> Bool {
    return a == b
}






