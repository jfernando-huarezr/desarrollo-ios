import UIKit //biblioteca inicial

//variables implicitas
var greeting = "Hello, playground" //esto es una variable con var
let constante = 45 //esto es una constante con let

//no necesito punto y coma
//revisar material universidad de cornell

var variablePrueba : String = "Texto de prueba" //para poner variables explicitas, se usa dos puntos luego del nombre y despues de los dos puntos el tipo de dato. Luego se asigna el valor de la variable

var concatenar = "\(greeting) jaja \(variablePrueba) jeje \(constante)"


//tipos de datos: Int, Float, Double, Array, Dictionary, String, Bool, Set

print(concatenar)

//double explicito
var explicitDouble : Double = 70
print(explicitDouble)

let label = "The width is "
let width = 100

let widthLabel = label + String(width) //estoy "construyendo" un nuevo objeto String con la variable Int 100
print(widthLabel)

let apples = 3
let oranges = 2
let fruitSummary = "I have \(apples) apples and \(oranges) oranges"
print(fruitSummary)

print("I have in total \(apples + oranges) fruits")

/****FUNCIONES en swift********/

//la sintaxis es func nombreFuncion(nombreVariable : TipoDeDato) -> TipoDeDatoRetorno {}
func greet(name: String) -> String {
    return "hello \(name) how are you"
}

print(greet(name: "fernando"))

//si no deseamos nombrar los parametros de la funcion al momento de crearla hay que poner un _ antes del parametro:
func goodbye(_ name : String) -> String {
    return "Goodbye \(name)"
}

print(goodbye("josefernando"))

//funciones sin parametros
func hungry() -> String {
    return("i'm hungry")
}

print(hungry())


func greet(name: String, justGreeted: Bool) -> String {
    if(justGreeted) {
        return goodbye(name)
    }
    else {
        return greet(name: name)
    }
}

print(greet(name: "luffy", justGreeted: false))


// las funciones pueden tener el mismo nombre, siempre que no tengna los mismos parametros de entrada


func minMax(items: [Int]) -> (min: Int, max: Int) {
    var currentMin = items[0]
    var currentMax = items[0]
    
    for item in items[1..<items.count] {
        if (item < currentMin){
            currentMin = item
        }
        
        else if (item > currentMax) {
            currentMax = item
        }
    }
    
    return (currentMin, currentMax)
}

let tuple = minMax(items: [10,4,5,123,6,0,233])

print(tuple)

func greeting (for name: String) -> String {
    "Hello \(name)"
}

print(greeting(for: "Goku"))

/**CLASES Y OBJETOS**/
//class Song {
struct Song{
    var name: String
    var author: String
    
    //constructor = inicializador en Swift
    init(name: String, author: String) {
        //en vez de this, usan self en Swift
        self.name = name
        self.author = author
    }
    
    //diferencia entre estructura y clase. estructura es tipo valor y la clase es tipo referencia
    
    //referencia, apunto a una cosa. valor estoy COPIANDO la cosa
}

var SongA = Song(name: "Lucky You", author: "Eminem")
var SongB = SongA // esto lo que hace es por Referencia, si cambio SongB, tambien cambio SongA

//si quiero hacer una copia, tengo que asegurarme que debe ser por valor

//en vez de class Song, usar struct Song! que es Estructura

SongB.name = "La cucaracha"
print(SongB.name)
print(SongA.name)

func add (value1: Int, value2: Int) -> Int {
    value1 + value2
}

add(value1: 2, value2: 3)

var mathFunction: ((Int, Int) -> Int) = add

mathFunction(6,5)

//parece una funcion flecha, funciones sin nombre

//funcion anonima
let sayHi : () -> Void = {
    print("soy una funcion anonima")
}

sayHi()

let value : (Int) -> Int = {
    value1 in
    return value1+1
}

print(value(5))

let suma : (Int, Int) -> Int = {
    operator1, operator2 in
    return operator1 + operator2
}

print(suma(6,7))
