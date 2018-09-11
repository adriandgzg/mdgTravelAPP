//
//  MapLugarEspecifico.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 11/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import Foundation
import MapKit

class LugarMapa: NSObject , MKAnnotation  {
    var Nombre: String?
    var coordinate: CLLocationCoordinate2D
    
    init(Nombre : String , coordinate: CLLocationCoordinate2D) {
        self.Nombre =  Nombre
        self.coordinate = coordinate
    }
}
