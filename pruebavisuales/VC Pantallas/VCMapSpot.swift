//
//  VCMapSpot.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 11/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit
import MapKit

class VCMapSpot: UIViewController, CLLocationManagerDelegate {

    var LugarMap : CLLocationManager!
    var datosarecibir : PAIS?
    
    var distanceSpan : CLLocationDegrees = 0.0
    var Posicion = CLLocationCoordinate2D ()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBOutlet weak var Map: MKMapView!
    @IBOutlet weak var ViewDesc: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitulo.text = datosarecibir?.NombrePais
        lblDescription.text = datosarecibir?.DescripcionPais
        image.image = datosarecibir?.foto
        
        distanceSpan  = 2000
        Posicion = CLLocationCoordinate2D(latitude:19.34254860014692 , longitude:-99.19736267990038)
        
        //La region del mapa que se muestra en el view
        Map.setRegion(MKCoordinateRegionMakeWithDistance(Posicion, distanceSpan, distanceSpan), animated: true)
        
        
        let LugarMarcado = LugarMapa( Nombre: "title", coordinate: Posicion)
        Map.addAnnotation(LugarMarcado)
        
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.encuentraMiPosicionActual()
        }
    

    func encuentraMiPosicionActual() {
        LugarMap = CLLocationManager()
        LugarMap.delegate = self
        LugarMap.desiredAccuracy = kCLLocationAccuracyBest
        LugarMap.requestAlwaysAuthorization()
        self.localizacionactivada()
        if CLLocationManager.locationServicesEnabled() {
            LugarMap.startUpdatingLocation()
        }

   }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error \(error)")
    }
    
    
    
    func localizacionactivada() {
        LugarMap.delegate = self
        
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            // Request when-in-use authorization initially
            LugarMap.requestWhenInUseAuthorization()
            break
            
        case .restricted, .denied:
            // Disable location features
            ///  disableMyLocationBasedFeatures()
            break
            
        case .authorizedWhenInUse:
            // Enable basic location features
            // enableMyWhenInUseFeatures()
            LugarMap.startUpdatingLocation()
            break
            
        case .authorizedAlways:
            // Enable any of your app's location features
            //enableMyAlwaysFeatures()
            LugarMap.startUpdatingLocation()
            break
        }
    }

    
    
    @IBAction func ShowMap(_ sender: Any) {
        if ViewDesc.alpha == 0 {
            UIView.animate(withDuration: 1.5, delay: 0.2, options: .curveEaseOut, animations: {
                self.ViewDesc.alpha = 1.0
            })
        }
        else {
            UIView.animate(withDuration: 1.5, delay: 0.2, options: .curveEaseOut, animations: {
                self.ViewDesc.alpha = 0.0
            })
            
        }
    }
    
    
    
    
}
