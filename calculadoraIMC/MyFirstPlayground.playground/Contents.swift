// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let numero=1
let numero2=2
var arreglo=["hola","como","estas"]

println("En la variable numero tengo el #: \(numero)" )

println("Este es un saludo \(arreglo[0])")


//dictionarios

var ChapterContents=["Chapter One" : "Introduction","Chapter Two" : "Platform Overview"]

ChapterContents["Chapter three"]="Swift Tour"

println(ChapterContents)

let StudentGradeSheet=[86, 100, 43, 76, 40 ]

var totalGrade=0

// ciclo for en colecciones

for grade in StudentGradeSheet {
    
    if grade > 60 {
        
        totalGrade+=2
        
    } else {
        
        totalGrade+=1
        
    }
    
}

println(totalGrade)

for gradesheet in StudentGradeSheet{
    
    println(gradesheet)
    
}

var letra: String = "hola"
var num = 5
var con = letra + " tengo \(num)"


// Switch case
var someCases=1

switch someCases {
    
case 1:
    
    println("One")
    
case 2:
    
    println ("Two")
    
default:
    
    println ("None")
    
}



"h"

var running=0

while running<100 {
    
    running = running+3
    
    print("Please wait…")
    
}

running


//Funciones


func choose(chapter: String, section: String)-> String {
    
    return "Welcome to \(section), of \(chapter)."
    
}

choose ("four", "using  loops")




class Price {
    
    var current_price = 0
    
    func describePrice () -> String {
        
        return "The current price is \(current_price)."
        
    }
    
}

print("hola actividades por hacer una lista: \n\t1: cosas \n\t1: cosas 😌 ")

var contador = 9

contador = contador++
print( contador )

let a = 5

var f = 2

let z = 3

print(" Resultado : \( a % ++f * z)")


var idiomas = ["ingles" , "español"]

idiomas.append("franses")

idiomas.insert("italiano", atIndex: 2)




let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var tipo : String = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            tipo = kind
        }
    }
}
print(String(largest) + " tipo de variable: \(tipo)")





var n = 2
while n < 100 {
    n = n * 2
}
print(n)




var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList.append("bottle of water")

print(shoppingList)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"






let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)




var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if  let name = optionalName {
    greeting = "Hello, \(name)"
}















var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)



var secondForLoop = 0
for _ in 0...4 {
    secondForLoop += 1
}
print("hello \(secondForLoop)")

/*
 Esta opcion nos permite asociar una variable que recibe y buscar partes de la palabra dentro de esta para que coincida
 tien sufijos al final --------  prefijos al inicio
 hasSuffix()                  hasPrefix()
 */

let vegetable = "red coco pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}



var array = ["apple", "banana", "dragonfruit"]
array.insert("cherry", atIndex: 2)
array





class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}



var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()



class Carro {
    var marca = ""
    var motor = 0
    var llantas : Int
    var puertas = 4
    var luces = false
    var encendido = false
    var velocidad = 0
    
    
    init(marca: String, motor: Int, llantas: Int){
        
        self.marca = marca
        self.motor = motor
        
        
        if (llantas >= 0 && llantas <= 4 ){
            
            self.llantas = llantas
            
        }else{
            
            self.llantas = 4
            
        }
        
    }
    
    func encenderCarro() -> String {
        encendido = true
        return "encendido: \(encendido)"
    }
    
    func arrancarCarro() -> String {
        velocidad = 100
        return "arrancado a: \(velocidad) km/h"
    }
    
    func frenarCarro() -> String {
        velocidad = 0
        return "frenando a: \(velocidad) km/h"
    }
    
    
}

var c1 = Carro(marca: "Ranault", motor: 1600, llantas: 3)

println("hemos creado un nuvo carro: \(c1.marca), con motor: \(c1.motor) y el cual ya esta \(c1.encenderCarro()) ")


c1.marca
c1.motor
c1.puertas
c1.llantas
c1.arrancarCarro()
c1.velocidad
c1.frenarCarro()
c1.velocidad





class nuevoCarro : Carro {
    var turbo: Bool
    
    
    var cambio = 2
    //variables calCuladas
    // Esta sirven para hacer calculos para una variable estos pueden ser enviados como parametros en el inicializador
    var cambios : Int{
        get { return (cambio * 2) }
        set { cambio = newValue }
    }
    /*
     Poner bloques de get y set me permiten leer el valor que tengo en las variables calculadas y cambiar los parametros con los que se calcula internamente
     */
    
    //variables opcionales dentro de una clase
    var radio : Bool?
    
    
    init(turbo: Bool, marca: String, motor: Int , llantas: Int){
        
        //inicializamos variable de la subclase
        self.turbo = false
        
        // inicializamos variables de la super clase
        super.init(marca: marca,motor: motor, llantas: llantas)
        
        
    }
    
    
    func activarTurbo() -> String{
        turbo = true
        velocidad = 200
        return "Turbo se paso a: \(turbo) y velocidad \(velocidad)"
    }
    
    // con override podemos sobre escribr funciones de la clase  padre para cambiar el comportamiento de una funcion
    override func arrancarCarro() -> String {
        super.velocidad = 10
        return "arrancando a: \(super.velocidad) km/h"
    }
    
    // convenience me sirve para crear inicializadores personalizados
    // Llama al inicializador propio de la propia clase  le debo enviar los mismos parametros que recibe pero le envio unos valores por defecto y solo le envio la marca
    convenience init (marca: String) {
        
        self.init (turbo: true, marca: marca, motor: 1200 , llantas: 4)
    }
    
    
}

var c2 = nuevoCarro(turbo: true, marca: "fiat 500", motor: 1600, llantas: 5)

c2.marca
c2.motor
c2.turbo
c2.puertas
c2.llantas
c2.arrancarCarro()
c2.activarTurbo()
c2.velocidad
c2.frenarCarro()
c2.velocidad
c2.cambios = 3
c2.cambios
c2.radio = true

if (c2.radio == nil) {
    print("No tiene radio")
} else { print("Si tiene radio") }

// aqui se obtiene el valor true o false
if let tienRadio = c2.radio {
    if tienRadio {
        print("Si tiene radio")
    } else { print("No tiene radio")}
}

var c3 = nuevoCarro(marca: "chevrolet")
c3.marca
c3.encenderCarro()
c3.cambios







enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Jack
let aceRawValue = ace.rawValue
ace.simpleDescription()


var div5 = 0
var div2 = 0

for i in 0...100 {
    div5 = (i % 5)
    div2 = (i % 2)
    
    if div5 == 0 {
        println("Numero \(i) #Bingo")
    } else if div2 == 0 {
        println("Numero \(i) Par")
    }  else if div2 == 1 {
        println("Numero \(i) Impar")
    }
    
    if i >= 30 && i <= 40 {
        
        println("Numero \(i) #Viva Swift!!!")
    }
    
    
    
}

/*
 Trabajando con Tuplas
 Las tuplas sirven para enviar varios valores de diferentes tipos en una funcion o en una variable
 
 */
func calculoIMC(peso : Double, altura : Double)-> (Double, String) {
    let result = peso / (altura * altura)
    var mensaje = ""
    
    if result < 18 {
        mensaje = "Peso bajo. Necesario valorar signos de desnutrición"
    } else if (result >= 18.00 && result <= 24.90 ){
        mensaje = "Normal"
    } else if (result >= 25.00 && result <= 26.90){
        mensaje = "Sobrepeso"
    } else if (result >= 27.00 && result < 28.00){
        mensaje = "Obesidad"
    } else if (result >= 28.00 && result < 29.90){
        mensaje = "Obesidad grado I. Riesgo relativo alto para desarrollar enfermedades cardiovasculares"
    } else if (result >= 30.00 && result < 39.90){
        mensaje = "Obesidad grado II. Riesgo relativo muy alto para el desarrollo de enfermedades cardiovasculares"
    } else if (result >= 40.00){
        mensaje = "Obesidad grado III Extrema o Mórbida. Riesgo relativo extremadamente alto para el desarrollo de enfermedades cardiovasculares"
    }
    
    return (result, mensaje)
}

let r = calculoIMC(79.0, 1.73)
// podemos acceder a los variables individuales
r.0
r.1

let pelicula : (titulo : String, año : Int, genero : String) = ("Titanic", 2003, "Drama")

pelicula.titulo
pelicula.año
pelicula.genero



//Opcionales

var numero3 : Int? = nil

numero3 = 5

println(String(numero3!))


enum Ciudad2 {
    
    case Medellin
    case Bogota
    case Barranquilla
    case Cali
    
}



func obtenerCiudad( ciudad: Ciudad2 ) ->String {
    
    switch ciudad{
        
    case Ciudad2.Medellin:
        return "Ciudad de la eterna primavera"
        
    case Ciudad2.Bogota, Ciudad2.Barranquilla, Ciudad2.Cali:
        return "Ciudad No son de la eterna primavera"
        
    default:
        return  "Ciudad no encontrada"
    }
    
}

obtenerCiudad( Ciudad2.Medellin )


func obtenClienteVip()-> ( edad : Int, nombre : String, presupuesto : Double ){
    
    return (40, "Alejandro", 1545.70)
    
}


obtenClienteVip()


let tupla = (nombre : "Marco", peso: 70.6, altura: 1.90)


tupla.nombre

let letra2 : Bool? = nil
let cantidad : Double? = nil

let espacio : String? = "____"





























