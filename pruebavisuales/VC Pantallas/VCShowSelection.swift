//
//  VCShowSelection.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 31/08/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class VCShowSelection: UIViewController {

    @IBOutlet weak var imgPaisSelec: UIImageView!
    @IBOutlet weak var lblNamePaisSelec: UILabel!
    @IBOutlet weak var lblDescPaisSelec: UILabel!
    
    var datosseleccionados : PAIS?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain , target: nil, action: nil)

        imgPaisSelec.image = datosseleccionados?.foto
        lblNamePaisSelec.text = datosseleccionados?.NombrePais
        lblDescPaisSelec.text = datosseleccionados?.DescripcionPais
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
