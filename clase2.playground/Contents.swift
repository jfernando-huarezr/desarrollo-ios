import UIKit
/*FUNCIONES 2*/
//esto es implicito
var greet = {
    print("hello isil")
}

greet()

//esto es explicito
var greet2: () -> () = {
    print("hello isil 2")
}

greet2()

var greet3: (String) -> () = { parameter in
    print("Hello \(parameter)")
}

greet3("Pepito")

var findSquare: (Int) -> (Int) = { number in
    return number*number
}

print(findSquare(5))

//como es de forma implicita??? ASI :

var findSquare2 = { (number: Int) -> Int in
    return number*number
}

print(findSquare2(6))

var multiplicacion = { (number1: Int, number2:Int) -> Int in
    return number1*number2
}

print(multiplicacion(5,8))

/**CLOSURES**/
//UNA FUNCION QUE RECIBE COMO PARAMETRO OTRA FUNCION

func grabLunch(search : () -> ()) {
    search()
}

grabLunch(search: {
    print("Debes recoger tu almuerzo ahora")
})

func grabLunch2(food: (String), search : (String) -> ()) -> Void {
    let sentence = "I'm eating \(food)"
    search(sentence)
}

grabLunch2(food: "pizza", search: { parameter in
    print(parameter)
})

//si la funcion closure es el ultimo parametro, se puede colocar de la siguiente forma
grabLunch2(food: "hamburger"){
    value in
    print(value)
}

