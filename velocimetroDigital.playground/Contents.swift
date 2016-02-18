//: Minitest velocimetro digital

import UIKit

enum Velocidades : Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var cad : String
        var vel : Int
        switch velocidad.rawValue{
        case 0:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadBaja)
            cad = "Velocidad baja"
            vel = velocidad.rawValue
            break
        case 20:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadMedia)
            cad = "Velocidad media"
            vel = velocidad.rawValue
            break
        case 50:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadAlta)
            cad = "Velocidad alta"
            vel = velocidad.rawValue
            break
        case 120:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadMedia)
            cad = "Velocidad media"
            vel = velocidad.rawValue
            break
        default:
            cad = "Apagado"
            vel = velocidad.rawValue
            break
        }
        return (vel,cad)
    }
}

var auto = Auto()
for(var i = 0;i<20;i++){
    print(auto.cambioDeVelocidad())
}














