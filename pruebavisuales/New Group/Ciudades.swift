//
//  Ciudades.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 04/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

    
class Lugar: NSObject {
    
        var titulo:String
        var imgPlace:String
        
    override init(){
            
            titulo = "sin titulo"
            imgPlace = ""
        }
    }
    
class itemCarrousel: NSObject {
    
        var titulo : String
        var arrLugares :[Lugar]
    
    override init(){
            
            titulo = "sin titulo"
            arrLugares = []
        }
    }
    
class Ciudades : NSObject {
    
        var arrCarruseles: [itemCarrousel]
        var arrFeatures: [Lugar]
    
    override init(){
            arrCarruseles = []
            arrFeatures  = []
        }
    }


func arrayCiudades () -> [Lugar] {
    let inforciudades : [Lugar] = []

    let mexico = Lugar()
    mexico.titulo = "MÉXICO"
    mexico.imgPlace = "https://hempmeds.mx/wp-content/uploads/Mexico-Banner.jpg"

    let CostaRica = Lugar()
    CostaRica.titulo = "COSTA RICA"
    CostaRica.imgPlace = "https://static3lonelyplanetes.cdnstatics.com/sites/default/files/styles/max_1300x1300/public/811_1_volcanes-costa-rica.jpg?itok=RJTigqvT"

    
    let carrousel1 :itemCarrousel = itemCarrousel()
    carrousel1.titulo = "En America"
    carrousel1.arrLugares = [mexico, CostaRica]

    let Italia = Lugar()
    Italia.titulo = "Italia"
    Italia.imgPlace = "https://d2ecnxuc66vxfr.cloudfront.net/blog/wp-content/uploads/2017/02/lugares-turisticos-de-italia.png"

    let Rusia = Lugar()
    Rusia.titulo = "Rusia"
    Rusia.imgPlace = "https://assets.trome.pe/files/ec_article_multimedia_gallery/uploads/2017/11/19/5a12273c3a1ec.jpeg"

    let carrousel2 :itemCarrousel = itemCarrousel()
    carrousel2.titulo = "En Europa"
    carrousel2.arrLugares = [Italia, Rusia]

    return inforciudades
    
}


