//
//  ImagenesyDescripcion.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 31/08/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class PAIS: NSObject {
    
    var foto : UIImage
    var DescripcionPais : String
    var NombrePais : String
    var pueblos : [PAIS]
    
    
    override init () {
        DescripcionPais = ""
        NombrePais = ""
        foto = UIImage ()
        pueblos = [PAIS] ()
    }
    
    
    init (DescripcionPais : String, NombrePais : String , foto : UIImage)
    {
        self.DescripcionPais = DescripcionPais
        self.NombrePais = NombrePais
        self.foto = foto
        pueblos = [PAIS] ()
    }

    
    static func arraydeinformacion() -> [PAIS]{
        var inforpais : [PAIS] = []
        
        inforpais.append(PAIS(DescripcionPais: "Es una ciudad colonial", NombrePais: "BRASIL", foto: UIImage(named: "brasil")!))
        
        
        
        inforpais.append(PAIS(DescripcionPais: "Es famosa por sus calles ", NombrePais: "ESPAÑA", foto: UIImage(named: "espana")!))
        
        inforpais.append(PAIS(DescripcionPais: "Los extranjeros viajan a Chiang", NombrePais: "ISLANDIA", foto: UIImage(named: "islandia")!))
        
        inforpais.append(PAIS(DescripcionPais: "Ubicada en el centro del país", NombrePais: "SUECIA", foto: UIImage(named: "suecia")!))
        
        inforpais.append(PAIS(DescripcionPais: "Sus románticos puentes", NombrePais: "THAILANDIA", foto: UIImage(named: "thailandia")!))
        
        
        
        return inforpais
    }
    
    
    
    }
    

    

