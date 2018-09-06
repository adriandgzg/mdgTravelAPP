//
//  Lugar1.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 04/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class Lugar1 : NSObject {

    var titulos : String
    var imgPlaces : UIImage
    var descripcion : String

    
    override init(){
        
        titulos = ""
        imgPlaces = UIImage ()
        descripcion = " "
        
    }
    
    init(titulos : String , imgPlaces : UIImage , descripcion : String) {
        
        self.titulos = titulos
        self.imgPlaces = imgPlaces
        self.descripcion = descripcion
    }
    
    static func ciudad() -> Lugar1 {
        
        let Mexico = Lugar1 ()
        Mexico.imgPlaces = UIImage(named: "C3")!
        Mexico.titulos = "MEXICO"
        Mexico.descripcion = "Es un lugar de algún país queshhhs kajs bans dekje de septiembre doeir dkej skdj aksjasjn aksjkajs kajs tiene muchas cosas, ay efndkjjjeiueryr  kkk kand iowrj   qoir  skdj  mansy  iwueh ksjdkbf sjdbj ncb fslkdf, akjdfhdksj.a skjsjdf, bvkjdbv"

        return Mexico
    }
}





