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
        let velActual = self.velocidad.rawValue;
        switch velocidad.rawValue{
        case 0:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadBaja)
            cad = "Apagado"
            break
        case 20:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadMedia)
            cad = "Velocidad baja"
            break
        case 50:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadAlta)
            cad = "Velocidad media"
            break
        case 120:
            velocidad = Velocidades(velocidadInicial: Velocidades.velocidadMedia)
            cad = "Velocidad alta"
            break
        default:
            cad = "Apagado"
            break
        }
        return (velActual,cad)
    }
}

var auto = Auto()
var resp : (actual: Int, velocidadEnCadena: String)
for(var i = 0;i<20;i++){
    resp = auto.cambioDeVelocidad();
    print("\(resp.actual), \(resp.velocidadEnCadena)")
}














